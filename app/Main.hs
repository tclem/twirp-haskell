{-# LANGUAGE OverloadedLists #-}
module Main where

import Network.Wai.Handler.Warp (run)
import Servant
import Twirp

import Prelude hiding ((!!))
import System.Random
import Control.Monad.IO.Class
import Data.List.NonEmpty (NonEmpty, (!!))

import Twirp.Example.Haberdasher.Haberdasher
import Twirp.Example.Haberdasher.HaberdasherPB

type RequestID = String
type ExpectedHeaders = Header "X-Request-Id" RequestID

type API = HaberdasherAPI ExpectedHeaders

main :: IO ()
main = run 8003 app

app :: Application
app = twirpErrorResponses apiApp

apiApp :: Application
apiApp = serve (Proxy :: Proxy API) server

server :: Server API
server = (makeHat :<|> getBill) :<|> checkHealth
  where

    makeHat :: Maybe RequestID -> Size -> Handler Hat
    makeHat _ Size{..} = do
      color <- choice ["blue", "red", "white"]
      kind  <- choice ["Setson", "cowboy", "beanie"]
      pure $ Hat inches color kind

    getBill :: Maybe RequestID -> Hat -> Handler Bill
    getBill _ Hat{..} = do
      price <- case color of
                 "blue"  -> pure $ Price (10 * fromIntegral inches) 0
                 "red"   -> pure $ Price (20 * fromIntegral inches) 0
                 "white" -> pure $ Price (40 * fromIntegral inches) 0
                 _       -> throwError (err400 { errBody = "Invalid hat color" })

      pure $ Bill (Just price) UnPaid Nothing

    checkHealth :: Maybe RequestID -> Ping -> Handler Pong
    checkHealth _ _ = pure $ Pong "OK" [Test [1, 2] [Price 10 1]] (Just (U "hello"))

choice :: MonadIO m => NonEmpty a -> m a
choice fs = (fs !!) <$> liftIO (randomRIO (0, pred (length fs)))
