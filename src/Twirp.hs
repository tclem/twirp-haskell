module Twirp
  ( Protobuf
  , module Middleware
  ) where

import Twirp.Middleware.Errors as Middleware

import Data.Bifunctor (first)
import Data.ByteString.Lazy.Char8 as BC
import Network.HTTP.Media ((//))
import Proto3.Suite as Proto3
import Servant.API

data Protobuf

instance Accept Protobuf where
  contentType _ = "application" // "protobuf"

instance Message a => MimeRender Protobuf a where
  mimeRender _ = Proto3.toLazyByteString

instance Message a => MimeUnrender Protobuf a where
  mimeUnrender _ = first show . Proto3.fromByteString . BC.toStrict
