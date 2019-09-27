{-# LANGUAGE OverloadedLists, OverloadedStrings, TypeOperators #-}
module Main where

import Network.Wai.Handler.Warp (run)
import Servant
import Twirp

import Prelude hiding ((!!))
import System.Random
import Control.Monad.IO.Class
import Data.List.NonEmpty (NonEmpty, (!!))

import Twirp.Example.Haberdasher.Haberdasher
import Proto.Haberdasher as P
import Proto.Haberdasher_Fields as P
import Data.ProtoLens (defMessage)
import Lens.Micro

type RequestID = String

type API
  = Header "X-Request-Id" RequestID
  :> HaberdasherAPI

main :: IO ()
main = run 8003 app

app :: Application
app = twirpErrorResponses apiApp

apiApp :: Application
apiApp = serve (Proxy :: Proxy API) server

server :: Server API
server _requestID = (makeHat :<|> getBill) :<|> checkHealth
  where

    makeHat :: Size -> Handler Hat
    makeHat size = do
      color' <- choice ["blue", "red", "white"]
      kind'  <- choice ["Setson", "cowboy", "beanie"]
      pure $ defMessage
        & P.inches .~ (size^.inches)
        & P.color .~ color'
        & P.name .~ kind'

    getBill :: Hat -> Handler Bill
    getBill hat = do
      price' <- case hat^.color of
                  "blue"  -> pure $ mkPrice 10 hat
                  "red"   -> pure $ mkPrice 20 hat
                  "white" -> pure $ mkPrice 40 hat
                  _       -> throwError (err400 { errBody = "Invalid hat color" })

      pure $ defMessage
        & P.maybe'price ?~ price'
        & P.status .~ Bill'UN_PAID
        & P.maybe'extra .~ Nothing

      where
        mkPrice m h = defMessage
          & P.dollars .~ (m * fromIntegral (h^.inches))
          & P.cents .~ 0


    checkHealth :: Ping -> Handler Pong
    checkHealth _ = pure $ defMessage
      & P.status .~ "OK"
      & P.stuff .~ mempty
      & P.maybe'extra .~ Nothing
      & P.id .~ 1
      & P.type' .~ "hello"

choice :: MonadIO m => NonEmpty a -> m a
choice fs = (fs !!) <$> liftIO (randomRIO (0, pred (length fs)))
