-- Code generated by protoc-gen-haskell 0.1.0, DO NOT EDIT.
{-# LANGUAGE DerivingVia, DeriveAnyClass, DuplicateRecordFields #-}
{-# OPTIONS_GHC -Wno-unused-imports #-}
module Twirp.Example.HaberdasherPB where

import Data.Aeson
import Data.ByteString (ByteString)
import Data.Fixed (Fixed)
import Data.Int
import Data.Text (Text)
import Data.Word
import GHC.Generics
import Proto3.Suite

data Size = Size
  { inches :: Int32
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Message, Named, FromJSON, ToJSON)

data Hat = Hat
  { inches :: Int32
  , color :: Text
  , name :: Text
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Message, Named, FromJSON, ToJSON)

data BillExtra
  = VatInfo { vatInfo :: Text }
  | ZipCode { zipCode :: Text }
  deriving stock (Eq, Ord, Show, Generic)
  deriving anyclass (Message, Named, FromJSON, ToJSON)

data Bill = Bill
  { price :: Maybe Price
  , status :: BillingStatus
  , extra :: Maybe BillExtra
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Message, Named, FromJSON, ToJSON)

data BillingStatus
  = UnPaid
  | Paid
  deriving stock (Eq, Ord, Show, Enum, Bounded, Generic)
  deriving anyclass (Named, MessageField, FromJSON, ToJSON)
  deriving Primitive via PrimitiveEnum BillingStatus
instance HasDefault BillingStatus where def = UnPaid

data Price = Price
  { dollars :: Word32
  , cents :: Word32
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Message, Named, FromJSON, ToJSON)

data Ping = Ping
  { service :: Text
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Message, Named, FromJSON, ToJSON)

data Pong = Pong
  { status :: Text
  } deriving stock (Eq, Ord, Show, Generic)
    deriving anyclass (Message, Named, FromJSON, ToJSON)
