module Twirp
  ( Protobuf
  , JSONPB
  , module Middleware
  ) where

import Twirp.Middleware.Errors as Middleware

import Data.Bifunctor (first)
import Data.ByteString.Lazy.Char8 as BC
import Data.ByteString.Builder as BB
import Network.HTTP.Media ((//))
import Data.ProtoLens.Encoding as Proto
import Data.ProtoLens.Message (Message)
import Data.ProtoLens.JSON (encodeMessageJSON)
import Servant.API

data Protobuf

instance Accept Protobuf where
  contentType _ = "application" // "protobuf"

instance Message a => MimeRender Protobuf a where
  mimeRender _ = BB.toLazyByteString . Proto.buildMessage

instance Message a => MimeUnrender Protobuf a where
  mimeUnrender _ = first show . Proto.decodeMessage . BC.toStrict


data JSONPB

instance Accept JSONPB where
  contentType _ = "application" // "protobuf"

instance Message a => MimeRender JSONPB a where
  mimeRender _ = encodeMessageJSON

instance Message a => MimeUnrender JSONPB a where
  mimeUnrender _ = undefined -- first show . Proto.decodeMessage . BC.toStrict
