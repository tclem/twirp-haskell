{-# LANGUAGE OverloadedLists #-}
module Main where

import Network.Wai.Handler.Warp (run)
import Servant
import Twirp

import Prelude hiding ((!!))
import System.Random
import Control.Monad.IO.Class
import Data.List.NonEmpty (NonEmpty, (!!))

import Twirp.Example.Haberdasher
import Twirp.Example.HaberdasherPB

type RequestID = String
type ExpectedHeaders = Header "X-GitHub-Request-Id" RequestID

type API = HaberdasherAPI ExpectedHeaders

main :: IO ()
main = run 8003 app
  where
    app = serve (Proxy :: Proxy API) server

    server :: Server API
    server = makeHat

    makeHat :: Maybe RequestID -> Size -> Handler Hat
    makeHat _ Size{..} = do
      color <- choice ["blue", "red", "white"]
      kind  <- choice ["Setson", "cowboy", "beanie"]
      pure $ Hat inches color kind


choice :: MonadIO m => NonEmpty a -> m a
choice fs = (fs !!) <$> liftIO (randomRIO (0, pred (length fs)))
