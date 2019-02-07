{-# LANGUAGE DerivingStrategies, DeriveAnyClass #-}

module Twirp.Example.HaberdasherPB where

import Proto3.Suite
import GHC.Generics
import Data.Aeson
import Data.Text (Text)
import Data.Int
import Data.Word

-- Request type, deriving Message for PB and FromJSON for JSON parsing
newtype Size = Size
  { inches :: Int32
  } deriving stock (Eq, Show, Generic)
    deriving anyclass (Message, Named, FromJSON)

-- Request/response type (both FromJSON/ToJSON)
data Hat = Hat
  { size  :: Int32
  , color :: Text
  , name  :: Text
  } deriving stock (Eq, Show, Generic)
    deriving anyclass (Message, Named, FromJSON, ToJSON)

-- Response type (just ToJSON)
newtype Bill = Bill
  { price_cents :: Word32
  } deriving stock (Eq, Show, Generic)
    deriving anyclass (Message, Named, ToJSON)
