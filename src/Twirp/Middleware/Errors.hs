{-# LANGUAGE DerivingVia, DeriveAnyClass, ScopedTypeVariables, ViewPatterns #-}
-- | Middlewares for handling Twirp error responses.
module Twirp.Middleware.Errors where

import Data.Aeson
import GHC.Generics
import Network.HTTP.Types
import Network.Wai

import qualified Data.ByteString as BS

-- | A Twirp error that will be sent as a JSON-encoded response body.
-- See: https://github.com/twitchtv/twirp/blob/master/docs/errors.md
data TwirpError = TwirpError { code :: String, msg :: String }
  deriving stock (Eq, Show, Generic)
  deriving anyclass (FromJSON, ToJSON)

-- | Rewrite error responses to use Twirp's error codes and JSON encoding
-- when they don't already fit that model.
twirpErrorResponses :: Middleware
twirpErrorResponses = modifyResponse $ \response ->
  if nonTwirpError response then
    let
      status = responseStatus response
      errResponse err = responseLBS status headers (encode err)
    in case statusCode status of
      400 -> errResponse badRequest
      404 -> errResponse notFound
      408 -> errResponse canceled
      500 -> errResponse serverError
      503 -> errResponse unavailable
      _   -> errResponse unknown
  else
    response
  where
    nonTwirpError r = isError r && not (isJson r)
    isError (responseStatus -> s) = statusIsClientError s || statusIsServerError s
    isJson (responseHeaders -> hs) = maybe False ("application/json" `BS.isPrefixOf`) $
      lookup hContentType hs

    headers = [(hContentType, "application/json; charset=utf-8")]

    badRequest = TwirpError "invalid_argument" "Bad Request"
    notFound = TwirpError "not_found" "Not found"
    canceled = TwirpError "canceled" "Request Timeout"
    serverError = TwirpError "internal" "Internal Server Error"
    unavailable = TwirpError "unavailable" "Service Unavailable"
    unknown = TwirpError "unknown" "Unknown"
