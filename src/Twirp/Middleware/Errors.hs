{-# LANGUAGE DerivingVia, DeriveAnyClass, ScopedTypeVariables #-}
module Twirp.Middleware.Errors where

import Data.Aeson
import GHC.Generics
import Network.HTTP.Types
import Network.Wai

data TwirpError = TwirpError { code :: String, msg :: String }
  deriving stock (Eq, Show, Generic)
  deriving anyclass (ToJSON)

-- Rewrite error responses to use Twirp's error codes and JSON encoding.
-- See: https://github.com/twitchtv/twirp/blob/master/docs/errors.md
twirpErrorResponses :: Middleware
twirpErrorResponses = modifyResponse go
  where
    go response = let status = responseStatus response in
      case statusCode status of
        400 -> responseLBS status headers (encode badRequest)
        404 -> responseLBS status headers (encode notFound)
        408 -> responseLBS status headers (encode canceled)
        500 -> responseLBS status headers (encode serverError)
        503 -> responseLBS status headers (encode unavailable)
        _   -> response

    headers = [(hContentType, "application/json; charset=utf-8")]

    badRequest = TwirpError "invalid_argument" "Bad Request"
    notFound = TwirpError "not_found" "Not found"
    canceled = TwirpError "canceled" "Request Timeout"
    unavailable = TwirpError "unavailable" "Service Unavailable"
    serverError = TwirpError "internal" "Internal Server Error"
