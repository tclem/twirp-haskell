{- This file was auto-generated from haberdasher.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies, UndecidableInstances, GeneralizedNewtypeDeriving, MultiParamTypeClasses, FlexibleContexts, FlexibleInstances, PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds, BangPatterns, TypeApplications, OverloadedStrings, DerivingStrategies#-}
{-# OPTIONS_GHC -Wno-unused-imports#-}
{-# OPTIONS_GHC -Wno-duplicate-exports#-}
{-# OPTIONS_GHC -Wno-dodgy-exports#-}
module Proto.Haberdasher (
        Haberdasher(..), Health(..), Bill(), Bill'Extra(..), _Bill'VatInfo,
        _Bill'ZipCode, Bill'BillingStatus(..), Bill'BillingStatus(),
        Bill'BillingStatus'UnrecognizedValue, EmptyMessage(),
        FieldTestMessage(), Hat(), Ping(), Pong(), Pong'Extra(..), _Pong'T,
        _Pong'U, Price(), Size(), Test()
    ) where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism as Data.ProtoLens.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens as Data.ProtoLens
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes as Data.ProtoLens.Encoding.Bytes
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing as Data.ProtoLens.Encoding.Growing
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum as Data.ProtoLens.Message.Enum
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2 as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8 as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read
{- | Fields :
     
         * 'Proto.Haberdasher_Fields.price' @:: Lens' Bill Price@
         * 'Proto.Haberdasher_Fields.maybe'price' @:: Lens' Bill (Prelude.Maybe Price)@
         * 'Proto.Haberdasher_Fields.status' @:: Lens' Bill Bill'BillingStatus@
         * 'Proto.Haberdasher_Fields.maybe'extra' @:: Lens' Bill (Prelude.Maybe Bill'Extra)@
         * 'Proto.Haberdasher_Fields.maybe'vatInfo' @:: Lens' Bill (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Haberdasher_Fields.vatInfo' @:: Lens' Bill Data.Text.Text@
         * 'Proto.Haberdasher_Fields.maybe'zipCode' @:: Lens' Bill (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Haberdasher_Fields.zipCode' @:: Lens' Bill Data.Text.Text@ -}
data Bill
  = Bill'_constructor {_Bill'price :: !(Prelude.Maybe Price),
                       _Bill'status :: !Bill'BillingStatus,
                       _Bill'extra :: !(Prelude.Maybe Bill'Extra),
                       _Bill'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Bill where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Bill'Extra
  = Bill'VatInfo !Data.Text.Text | Bill'ZipCode !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Bill "price" Price where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bill'price (\ x__ y__ -> x__ {_Bill'price = y__}))
        (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Data.ProtoLens.Field.HasField Bill "maybe'price" (Prelude.Maybe Price) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bill'price (\ x__ y__ -> x__ {_Bill'price = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bill "status" Bill'BillingStatus where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bill'status (\ x__ y__ -> x__ {_Bill'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bill "maybe'extra" (Prelude.Maybe Bill'Extra) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bill'extra (\ x__ y__ -> x__ {_Bill'extra = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Bill "maybe'vatInfo" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bill'extra (\ x__ y__ -> x__ {_Bill'extra = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Bill'VatInfo x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Bill'VatInfo y__))
instance Data.ProtoLens.Field.HasField Bill "vatInfo" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bill'extra (\ x__ y__ -> x__ {_Bill'extra = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Bill'VatInfo x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Bill'VatInfo y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Bill "maybe'zipCode" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bill'extra (\ x__ y__ -> x__ {_Bill'extra = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Bill'ZipCode x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Bill'ZipCode y__))
instance Data.ProtoLens.Field.HasField Bill "zipCode" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Bill'extra (\ x__ y__ -> x__ {_Bill'extra = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Bill'ZipCode x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Bill'ZipCode y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message Bill where
  messageName _ = Data.Text.pack "twirp.example.haberdasher.Bill"
  packedMessageDescriptor _
    = "\n\
      \\EOTBill\DC26\n\
      \\ENQprice\CAN\SOH \SOH(\v2 .twirp.example.haberdasher.PriceR\ENQprice\DC2E\n\
      \\ACKstatus\CAN\STX \SOH(\SO2-.twirp.example.haberdasher.Bill.BillingStatusR\ACKstatus\DC2\ESC\n\
      \\bvat_info\CAN\ETX \SOH(\tH\NULR\avatInfo\DC2\ESC\n\
      \\bzip_code\CAN\EOT \SOH(\tH\NULR\azipCode\"&\n\
      \\rBillingStatus\DC2\v\n\
      \\aUN_PAID\DLE\NUL\DC2\b\n\
      \\EOTPAID\DLE\SOHB\a\n\
      \\ENQextra"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        price__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "price"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Price)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'price")) ::
              Data.ProtoLens.FieldDescriptor Bill
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                 Data.ProtoLens.FieldTypeDescriptor Bill'BillingStatus)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor Bill
        vatInfo__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "vat_info"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'vatInfo")) ::
              Data.ProtoLens.FieldDescriptor Bill
        zipCode__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "zip_code"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'zipCode")) ::
              Data.ProtoLens.FieldDescriptor Bill
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, price__field_descriptor),
           (Data.ProtoLens.Tag 2, status__field_descriptor),
           (Data.ProtoLens.Tag 3, vatInfo__field_descriptor),
           (Data.ProtoLens.Tag 4, zipCode__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Bill'_unknownFields
        (\ x__ y__ -> x__ {_Bill'_unknownFields = y__})
  defMessage
    = Bill'_constructor
        {_Bill'price = Prelude.Nothing,
         _Bill'status = Data.ProtoLens.fieldDefault,
         _Bill'extra = Prelude.Nothing, _Bill'_unknownFields = []}
  parseMessage
    = let
        loop :: Bill -> Data.ProtoLens.Encoding.Bytes.Parser Bill
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.isolate
                                             (Prelude.fromIntegral len) Data.ProtoLens.parseMessage)
                                       "price"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"price") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.toEnum
                                          (Prelude.fmap
                                             Prelude.fromIntegral
                                             Data.ProtoLens.Encoding.Bytes.getVarInt))
                                       "status"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "vat_info"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"vatInfo") y x)
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "zip_code"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"zipCode") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Bill"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'price") _x
              of
                Prelude.Nothing -> Data.Monoid.mempty
                (Prelude.Just _v)
                  -> (Data.Monoid.<>)
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                       ((Prelude..)
                          (\ bs
                             -> (Data.Monoid.<>)
                                  (Data.ProtoLens.Encoding.Bytes.putVarInt
                                     (Prelude.fromIntegral (Data.ByteString.length bs)))
                                  (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                          Data.ProtoLens.encodeMessage _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                            Prelude.fromEnum _v))
                ((Data.Monoid.<>)
                   (case
                        Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'extra") _x
                    of
                      Prelude.Nothing -> Data.Monoid.mempty
                      (Prelude.Just (Bill'VatInfo v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.Text.Encoding.encodeUtf8 v)
                      (Prelude.Just (Bill'ZipCode v))
                        -> (Data.Monoid.<>)
                             (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                             ((Prelude..)
                                (\ bs
                                   -> (Data.Monoid.<>)
                                        (Data.ProtoLens.Encoding.Bytes.putVarInt
                                           (Prelude.fromIntegral (Data.ByteString.length bs)))
                                        (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                Data.Text.Encoding.encodeUtf8 v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Bill where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Bill'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Bill'price x__)
                (Control.DeepSeq.deepseq
                   (_Bill'status x__) (Control.DeepSeq.deepseq (_Bill'extra x__) ())))
instance Control.DeepSeq.NFData Bill'Extra where
  rnf (Bill'VatInfo x__) = Control.DeepSeq.rnf x__
  rnf (Bill'ZipCode x__) = Control.DeepSeq.rnf x__
_Bill'VatInfo ::
  Data.ProtoLens.Prism.Prism' Bill'Extra Data.Text.Text
_Bill'VatInfo
  = Data.ProtoLens.Prism.prism'
      Bill'VatInfo
      (\ p__
         -> case p__ of
              (Bill'VatInfo p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Bill'ZipCode ::
  Data.ProtoLens.Prism.Prism' Bill'Extra Data.Text.Text
_Bill'ZipCode
  = Data.ProtoLens.Prism.prism'
      Bill'ZipCode
      (\ p__
         -> case p__ of
              (Bill'ZipCode p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
newtype Bill'BillingStatus'UnrecognizedValue
  = Bill'BillingStatus'UnrecognizedValue Data.Int.Int32
  deriving stock (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Bill'BillingStatus
  = Bill'UN_PAID |
    Bill'PAID |
    Bill'BillingStatus'Unrecognized !Bill'BillingStatus'UnrecognizedValue
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.MessageEnum Bill'BillingStatus where
  maybeToEnum 0 = Prelude.Just Bill'UN_PAID
  maybeToEnum 1 = Prelude.Just Bill'PAID
  maybeToEnum k
    = Prelude.Just
        (Bill'BillingStatus'Unrecognized
           (Bill'BillingStatus'UnrecognizedValue (Prelude.fromIntegral k)))
  showEnum Bill'UN_PAID = "UN_PAID"
  showEnum Bill'PAID = "PAID"
  showEnum
    (Bill'BillingStatus'Unrecognized (Bill'BillingStatus'UnrecognizedValue k))
    = Prelude.show k
  readEnum k
    | (Prelude.==) k "UN_PAID" = Prelude.Just Bill'UN_PAID
    | (Prelude.==) k "PAID" = Prelude.Just Bill'PAID
    | Prelude.otherwise
    = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Bill'BillingStatus where
  minBound = Bill'UN_PAID
  maxBound = Bill'PAID
instance Prelude.Enum Bill'BillingStatus where
  toEnum k__
    = Prelude.maybe
        (Prelude.error
           ((Prelude.++)
              "toEnum: unknown value for enum BillingStatus: "
              (Prelude.show k__)))
        Prelude.id (Data.ProtoLens.maybeToEnum k__)
  fromEnum Bill'UN_PAID = 0
  fromEnum Bill'PAID = 1
  fromEnum
    (Bill'BillingStatus'Unrecognized (Bill'BillingStatus'UnrecognizedValue k))
    = Prelude.fromIntegral k
  succ Bill'PAID
    = Prelude.error
        "Bill'BillingStatus.succ: bad argument Bill'PAID. This value would be out of bounds."
  succ Bill'UN_PAID = Bill'PAID
  succ (Bill'BillingStatus'Unrecognized _)
    = Prelude.error
        "Bill'BillingStatus.succ: bad argument: unrecognized value"
  pred Bill'UN_PAID
    = Prelude.error
        "Bill'BillingStatus.pred: bad argument Bill'UN_PAID. This value would be out of bounds."
  pred Bill'PAID = Bill'UN_PAID
  pred (Bill'BillingStatus'Unrecognized _)
    = Prelude.error
        "Bill'BillingStatus.pred: bad argument: unrecognized value"
  enumFrom = Data.ProtoLens.Message.Enum.messageEnumFrom
  enumFromTo = Data.ProtoLens.Message.Enum.messageEnumFromTo
  enumFromThen = Data.ProtoLens.Message.Enum.messageEnumFromThen
  enumFromThenTo = Data.ProtoLens.Message.Enum.messageEnumFromThenTo
instance Data.ProtoLens.FieldDefault Bill'BillingStatus where
  fieldDefault = Bill'UN_PAID
instance Control.DeepSeq.NFData Bill'BillingStatus where
  rnf x__ = Prelude.seq x__ ()
{- | Fields :
      -}
data EmptyMessage
  = EmptyMessage'_constructor {_EmptyMessage'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EmptyMessage where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message EmptyMessage where
  messageName _
    = Data.Text.pack "twirp.example.haberdasher.EmptyMessage"
  packedMessageDescriptor _
    = "\n\
      \\fEmptyMessage"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag = let in Data.Map.fromList []
  unknownFields
    = Lens.Family2.Unchecked.lens
        _EmptyMessage'_unknownFields
        (\ x__ y__ -> x__ {_EmptyMessage'_unknownFields = y__})
  defMessage
    = EmptyMessage'_constructor {_EmptyMessage'_unknownFields = []}
  parseMessage
    = let
        loop ::
          EmptyMessage -> Data.ProtoLens.Encoding.Bytes.Parser EmptyMessage
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "EmptyMessage"
  buildMessage
    = \ _x
        -> Data.ProtoLens.Encoding.Wire.buildFieldSet
             (Lens.Family2.view Data.ProtoLens.unknownFields _x)
instance Control.DeepSeq.NFData EmptyMessage where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq (_EmptyMessage'_unknownFields x__) ()
{- | Fields :
     
         * 'Proto.Haberdasher_Fields.testBytes' @:: Lens' FieldTestMessage Data.ByteString.ByteString@ -}
data FieldTestMessage
  = FieldTestMessage'_constructor {_FieldTestMessage'testBytes :: !Data.ByteString.ByteString,
                                   _FieldTestMessage'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FieldTestMessage where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FieldTestMessage "testBytes" Data.ByteString.ByteString where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _FieldTestMessage'testBytes
           (\ x__ y__ -> x__ {_FieldTestMessage'testBytes = y__}))
        Prelude.id
instance Data.ProtoLens.Message FieldTestMessage where
  messageName _
    = Data.Text.pack "twirp.example.haberdasher.FieldTestMessage"
  packedMessageDescriptor _
    = "\n\
      \\DLEFieldTestMessage\DC2\GS\n\
      \\n\
      \test_bytes\CAN\ETX \SOH(\fR\ttestBytes"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        testBytes__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "test_bytes"
              (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional
                 (Data.ProtoLens.Field.field @"testBytes")) ::
              Data.ProtoLens.FieldDescriptor FieldTestMessage
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 3, testBytes__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _FieldTestMessage'_unknownFields
        (\ x__ y__ -> x__ {_FieldTestMessage'_unknownFields = y__})
  defMessage
    = FieldTestMessage'_constructor
        {_FieldTestMessage'testBytes = Data.ProtoLens.fieldDefault,
         _FieldTestMessage'_unknownFields = []}
  parseMessage
    = let
        loop ::
          FieldTestMessage
          -> Data.ProtoLens.Encoding.Bytes.Parser FieldTestMessage
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                           Data.ProtoLens.Encoding.Bytes.getBytes
                                             (Prelude.fromIntegral len))
                                       "test_bytes"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"testBytes") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "FieldTestMessage"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"testBytes") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData FieldTestMessage where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_FieldTestMessage'_unknownFields x__)
             (Control.DeepSeq.deepseq (_FieldTestMessage'testBytes x__) ())
{- | Fields :
     
         * 'Proto.Haberdasher_Fields.inches' @:: Lens' Hat Data.Int.Int32@
         * 'Proto.Haberdasher_Fields.color' @:: Lens' Hat Data.Text.Text@
         * 'Proto.Haberdasher_Fields.name' @:: Lens' Hat Data.Text.Text@ -}
data Hat
  = Hat'_constructor {_Hat'inches :: !Data.Int.Int32,
                      _Hat'color :: !Data.Text.Text,
                      _Hat'name :: !Data.Text.Text,
                      _Hat'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Hat where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Hat "inches" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Hat'inches (\ x__ y__ -> x__ {_Hat'inches = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Hat "color" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Hat'color (\ x__ y__ -> x__ {_Hat'color = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Hat "name" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Hat'name (\ x__ y__ -> x__ {_Hat'name = y__}))
        Prelude.id
instance Data.ProtoLens.Message Hat where
  messageName _ = Data.Text.pack "twirp.example.haberdasher.Hat"
  packedMessageDescriptor _
    = "\n\
      \\ETXHat\DC2\SYN\n\
      \\ACKinches\CAN\SOH \SOH(\ENQR\ACKinches\DC2\DC4\n\
      \\ENQcolor\CAN\STX \SOH(\tR\ENQcolor\DC2\DC2\n\
      \\EOTname\CAN\ETX \SOH(\tR\EOTname"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        inches__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inches"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"inches")) ::
              Data.ProtoLens.FieldDescriptor Hat
        color__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "color"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"color")) ::
              Data.ProtoLens.FieldDescriptor Hat
        name__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "name"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"name")) ::
              Data.ProtoLens.FieldDescriptor Hat
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, inches__field_descriptor),
           (Data.ProtoLens.Tag 2, color__field_descriptor),
           (Data.ProtoLens.Tag 3, name__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Hat'_unknownFields (\ x__ y__ -> x__ {_Hat'_unknownFields = y__})
  defMessage
    = Hat'_constructor
        {_Hat'inches = Data.ProtoLens.fieldDefault,
         _Hat'color = Data.ProtoLens.fieldDefault,
         _Hat'name = Data.ProtoLens.fieldDefault, _Hat'_unknownFields = []}
  parseMessage
    = let
        loop :: Hat -> Data.ProtoLens.Encoding.Bytes.Parser Hat
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "inches"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"inches") y x)
                        18
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "color"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"color") y x)
                        26
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "name"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Hat"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"inches") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"color") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                         ((Prelude..)
                            (\ bs
                               -> (Data.Monoid.<>)
                                    (Data.ProtoLens.Encoding.Bytes.putVarInt
                                       (Prelude.fromIntegral (Data.ByteString.length bs)))
                                    (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Data.Text.Encoding.encodeUtf8 _v))
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                            ((Prelude..)
                               (\ bs
                                  -> (Data.Monoid.<>)
                                       (Data.ProtoLens.Encoding.Bytes.putVarInt
                                          (Prelude.fromIntegral (Data.ByteString.length bs)))
                                       (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Data.Text.Encoding.encodeUtf8 _v))
                   (Data.ProtoLens.Encoding.Wire.buildFieldSet
                      (Lens.Family2.view Data.ProtoLens.unknownFields _x))))
instance Control.DeepSeq.NFData Hat where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Hat'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Hat'inches x__)
                (Control.DeepSeq.deepseq
                   (_Hat'color x__) (Control.DeepSeq.deepseq (_Hat'name x__) ())))
{- | Fields :
     
         * 'Proto.Haberdasher_Fields.service' @:: Lens' Ping Data.Text.Text@ -}
data Ping
  = Ping'_constructor {_Ping'service :: !Data.Text.Text,
                       _Ping'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Ping where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Ping "service" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Ping'service (\ x__ y__ -> x__ {_Ping'service = y__}))
        Prelude.id
instance Data.ProtoLens.Message Ping where
  messageName _ = Data.Text.pack "twirp.example.haberdasher.Ping"
  packedMessageDescriptor _
    = "\n\
      \\EOTPing\DC2\CAN\n\
      \\aservice\CAN\SOH \SOH(\tR\aservice"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        service__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "service"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"service")) ::
              Data.ProtoLens.FieldDescriptor Ping
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, service__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Ping'_unknownFields
        (\ x__ y__ -> x__ {_Ping'_unknownFields = y__})
  defMessage
    = Ping'_constructor
        {_Ping'service = Data.ProtoLens.fieldDefault,
         _Ping'_unknownFields = []}
  parseMessage
    = let
        loop :: Ping -> Data.ProtoLens.Encoding.Bytes.Parser Ping
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "service"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"service") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Ping"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"service") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Ping where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Ping'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Ping'service x__) ())
{- | Fields :
     
         * 'Proto.Haberdasher_Fields.status' @:: Lens' Pong Data.Text.Text@
         * 'Proto.Haberdasher_Fields.stuff' @:: Lens' Pong [Test]@
         * 'Proto.Haberdasher_Fields.vec'stuff' @:: Lens' Pong (Data.Vector.Vector Test)@
         * 'Proto.Haberdasher_Fields.id' @:: Lens' Pong Data.Int.Int32@
         * 'Proto.Haberdasher_Fields.type'' @:: Lens' Pong Data.Text.Text@
         * 'Proto.Haberdasher_Fields.maybe'extra' @:: Lens' Pong (Prelude.Maybe Pong'Extra)@
         * 'Proto.Haberdasher_Fields.maybe't' @:: Lens' Pong (Prelude.Maybe Data.Word.Word32)@
         * 'Proto.Haberdasher_Fields.t' @:: Lens' Pong Data.Word.Word32@
         * 'Proto.Haberdasher_Fields.maybe'u' @:: Lens' Pong (Prelude.Maybe Data.Text.Text)@
         * 'Proto.Haberdasher_Fields.u' @:: Lens' Pong Data.Text.Text@ -}
data Pong
  = Pong'_constructor {_Pong'status :: !Data.Text.Text,
                       _Pong'stuff :: !(Data.Vector.Vector Test),
                       _Pong'id :: !Data.Int.Int32,
                       _Pong'type' :: !Data.Text.Text,
                       _Pong'extra :: !(Prelude.Maybe Pong'Extra),
                       _Pong'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Pong where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
data Pong'Extra
  = Pong'T !Data.Word.Word32 | Pong'U !Data.Text.Text
  deriving stock (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Pong "status" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Pong'status (\ x__ y__ -> x__ {_Pong'status = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Pong "stuff" [Test] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Pong'stuff (\ x__ y__ -> x__ {_Pong'stuff = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Pong "vec'stuff" (Data.Vector.Vector Test) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Pong'stuff (\ x__ y__ -> x__ {_Pong'stuff = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Pong "id" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Pong'id (\ x__ y__ -> x__ {_Pong'id = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Pong "type'" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Pong'type' (\ x__ y__ -> x__ {_Pong'type' = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Pong "maybe'extra" (Prelude.Maybe Pong'Extra) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Pong'extra (\ x__ y__ -> x__ {_Pong'extra = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Pong "maybe't" (Prelude.Maybe Data.Word.Word32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Pong'extra (\ x__ y__ -> x__ {_Pong'extra = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Pong'T x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Pong'T y__))
instance Data.ProtoLens.Field.HasField Pong "t" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Pong'extra (\ x__ y__ -> x__ {_Pong'extra = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Pong'T x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Pong'T y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Field.HasField Pong "maybe'u" (Prelude.Maybe Data.Text.Text) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Pong'extra (\ x__ y__ -> x__ {_Pong'extra = y__}))
        (Lens.Family2.Unchecked.lens
           (\ x__
              -> case x__ of
                   (Prelude.Just (Pong'U x__val)) -> Prelude.Just x__val
                   _otherwise -> Prelude.Nothing)
           (\ _ y__ -> Prelude.fmap Pong'U y__))
instance Data.ProtoLens.Field.HasField Pong "u" Data.Text.Text where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Pong'extra (\ x__ y__ -> x__ {_Pong'extra = y__}))
        ((Prelude..)
           (Lens.Family2.Unchecked.lens
              (\ x__
                 -> case x__ of
                      (Prelude.Just (Pong'U x__val)) -> Prelude.Just x__val
                      _otherwise -> Prelude.Nothing)
              (\ _ y__ -> Prelude.fmap Pong'U y__))
           (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message Pong where
  messageName _ = Data.Text.pack "twirp.example.haberdasher.Pong"
  packedMessageDescriptor _
    = "\n\
      \\EOTPong\DC2\SYN\n\
      \\ACKstatus\CAN\SOH \SOH(\tR\ACKstatus\DC25\n\
      \\ENQstuff\CAN\STX \ETX(\v2\US.twirp.example.haberdasher.TestR\ENQstuff\DC2\SO\n\
      \\SOHt\CAN\ETX \SOH(\rH\NULR\SOHt\DC2\SO\n\
      \\SOHu\CAN\EOT \SOH(\tH\NULR\SOHu\DC2\SO\n\
      \\STXid\CAN\ENQ \SOH(\ENQR\STXid\DC2\DC2\n\
      \\EOTtype\CAN\ACK \SOH(\tR\EOTtypeB\a\n\
      \\ENQextra"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        status__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "status"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"status")) ::
              Data.ProtoLens.FieldDescriptor Pong
        stuff__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "stuff"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Test)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked (Data.ProtoLens.Field.field @"stuff")) ::
              Data.ProtoLens.FieldDescriptor Pong
        id__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "id"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"id")) ::
              Data.ProtoLens.FieldDescriptor Pong
        type'__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "type"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"type'")) ::
              Data.ProtoLens.FieldDescriptor Pong
        t__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "t"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe't")) ::
              Data.ProtoLens.FieldDescriptor Pong
        u__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "u"
              (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
              (Data.ProtoLens.OptionalField
                 (Data.ProtoLens.Field.field @"maybe'u")) ::
              Data.ProtoLens.FieldDescriptor Pong
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, status__field_descriptor),
           (Data.ProtoLens.Tag 2, stuff__field_descriptor),
           (Data.ProtoLens.Tag 5, id__field_descriptor),
           (Data.ProtoLens.Tag 6, type'__field_descriptor),
           (Data.ProtoLens.Tag 3, t__field_descriptor),
           (Data.ProtoLens.Tag 4, u__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Pong'_unknownFields
        (\ x__ y__ -> x__ {_Pong'_unknownFields = y__})
  defMessage
    = Pong'_constructor
        {_Pong'status = Data.ProtoLens.fieldDefault,
         _Pong'stuff = Data.Vector.Generic.empty,
         _Pong'id = Data.ProtoLens.fieldDefault,
         _Pong'type' = Data.ProtoLens.fieldDefault,
         _Pong'extra = Prelude.Nothing, _Pong'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Pong
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Test
             -> Data.ProtoLens.Encoding.Bytes.Parser Pong
        loop x mutable'stuff
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'stuff <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'stuff)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'stuff") frozen'stuff x))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        10
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "status"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"status") y x)
                                  mutable'stuff
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "stuff"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'stuff y)
                                loop x v
                        40
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "id"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                                  mutable'stuff
                        50
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "type"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y x)
                                  mutable'stuff
                        24
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "t"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"t") y x)
                                  mutable'stuff
                        34
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                       Data.ProtoLens.Encoding.Bytes.getBytes
                                                         (Prelude.fromIntegral len)
                                           Data.ProtoLens.Encoding.Bytes.runEither
                                             (case Data.Text.Encoding.decodeUtf8' value of
                                                (Prelude.Left err)
                                                  -> Prelude.Left (Prelude.show err)
                                                (Prelude.Right r) -> Prelude.Right r))
                                       "u"
                                loop
                                  (Lens.Family2.set (Data.ProtoLens.Field.field @"u") y x)
                                  mutable'stuff
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'stuff
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'stuff <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'stuff)
          "Pong"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((Prelude..)
                         (\ bs
                            -> (Data.Monoid.<>)
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Data.Text.Encoding.encodeUtf8 _v))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'stuff") _x))
                ((Data.Monoid.<>)
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
                    in
                      if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty
                      else
                          (Data.Monoid.<>)
                            (Data.ProtoLens.Encoding.Bytes.putVarInt 40)
                            ((Prelude..)
                               Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                   ((Data.Monoid.<>)
                      (let
                         _v = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
                       in
                         if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                             Data.Monoid.mempty
                         else
                             (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt 50)
                               ((Prelude..)
                                  (\ bs
                                     -> (Data.Monoid.<>)
                                          (Data.ProtoLens.Encoding.Bytes.putVarInt
                                             (Prelude.fromIntegral (Data.ByteString.length bs)))
                                          (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                  Data.Text.Encoding.encodeUtf8 _v))
                      ((Data.Monoid.<>)
                         (case
                              Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'extra") _x
                          of
                            Prelude.Nothing -> Data.Monoid.mempty
                            (Prelude.Just (Pong'T v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 24)
                                   ((Prelude..)
                                      Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral
                                      v)
                            (Prelude.Just (Pong'U v))
                              -> (Data.Monoid.<>)
                                   (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                   ((Prelude..)
                                      (\ bs
                                         -> (Data.Monoid.<>)
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                              (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                      Data.Text.Encoding.encodeUtf8 v))
                         (Data.ProtoLens.Encoding.Wire.buildFieldSet
                            (Lens.Family2.view Data.ProtoLens.unknownFields _x))))))
instance Control.DeepSeq.NFData Pong where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Pong'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Pong'status x__)
                (Control.DeepSeq.deepseq
                   (_Pong'stuff x__)
                   (Control.DeepSeq.deepseq
                      (_Pong'id x__)
                      (Control.DeepSeq.deepseq
                         (_Pong'type' x__)
                         (Control.DeepSeq.deepseq (_Pong'extra x__) ())))))
instance Control.DeepSeq.NFData Pong'Extra where
  rnf (Pong'T x__) = Control.DeepSeq.rnf x__
  rnf (Pong'U x__) = Control.DeepSeq.rnf x__
_Pong'T :: Data.ProtoLens.Prism.Prism' Pong'Extra Data.Word.Word32
_Pong'T
  = Data.ProtoLens.Prism.prism'
      Pong'T
      (\ p__
         -> case p__ of
              (Pong'T p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
_Pong'U :: Data.ProtoLens.Prism.Prism' Pong'Extra Data.Text.Text
_Pong'U
  = Data.ProtoLens.Prism.prism'
      Pong'U
      (\ p__
         -> case p__ of
              (Pong'U p__val) -> Prelude.Just p__val
              _otherwise -> Prelude.Nothing)
{- | Fields :
     
         * 'Proto.Haberdasher_Fields.dollars' @:: Lens' Price Data.Word.Word32@
         * 'Proto.Haberdasher_Fields.cents' @:: Lens' Price Data.Word.Word32@ -}
data Price
  = Price'_constructor {_Price'dollars :: !Data.Word.Word32,
                        _Price'cents :: !Data.Word.Word32,
                        _Price'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Price where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Price "dollars" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Price'dollars (\ x__ y__ -> x__ {_Price'dollars = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Price "cents" Data.Word.Word32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Price'cents (\ x__ y__ -> x__ {_Price'cents = y__}))
        Prelude.id
instance Data.ProtoLens.Message Price where
  messageName _ = Data.Text.pack "twirp.example.haberdasher.Price"
  packedMessageDescriptor _
    = "\n\
      \\ENQPrice\DC2\CAN\n\
      \\adollars\CAN\SOH \SOH(\rR\adollars\DC2\DC4\n\
      \\ENQcents\CAN\STX \SOH(\rR\ENQcents"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        dollars__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "dollars"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"dollars")) ::
              Data.ProtoLens.FieldDescriptor Price
        cents__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "cents"
              (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"cents")) ::
              Data.ProtoLens.FieldDescriptor Price
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, dollars__field_descriptor),
           (Data.ProtoLens.Tag 2, cents__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Price'_unknownFields
        (\ x__ y__ -> x__ {_Price'_unknownFields = y__})
  defMessage
    = Price'_constructor
        {_Price'dollars = Data.ProtoLens.fieldDefault,
         _Price'cents = Data.ProtoLens.fieldDefault,
         _Price'_unknownFields = []}
  parseMessage
    = let
        loop :: Price -> Data.ProtoLens.Encoding.Bytes.Parser Price
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "dollars"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"dollars") y x)
                        16
                          -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "cents"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"cents") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Price"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"dollars") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             ((Data.Monoid.<>)
                (let
                   _v = Lens.Family2.view (Data.ProtoLens.Field.field @"cents") _x
                 in
                   if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                       Data.Monoid.mempty
                   else
                       (Data.Monoid.<>)
                         (Data.ProtoLens.Encoding.Bytes.putVarInt 16)
                         ((Prelude..)
                            Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Price where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Price'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Price'dollars x__)
                (Control.DeepSeq.deepseq (_Price'cents x__) ()))
{- | Fields :
     
         * 'Proto.Haberdasher_Fields.inches' @:: Lens' Size Data.Int.Int32@ -}
data Size
  = Size'_constructor {_Size'inches :: !Data.Int.Int32,
                       _Size'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Size where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Size "inches" Data.Int.Int32 where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Size'inches (\ x__ y__ -> x__ {_Size'inches = y__}))
        Prelude.id
instance Data.ProtoLens.Message Size where
  messageName _ = Data.Text.pack "twirp.example.haberdasher.Size"
  packedMessageDescriptor _
    = "\n\
      \\EOTSize\DC2\SYN\n\
      \\ACKinches\CAN\SOH \SOH(\ENQR\ACKinches"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        inches__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "inches"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.PlainField
                 Data.ProtoLens.Optional (Data.ProtoLens.Field.field @"inches")) ::
              Data.ProtoLens.FieldDescriptor Size
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, inches__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Size'_unknownFields
        (\ x__ y__ -> x__ {_Size'_unknownFields = y__})
  defMessage
    = Size'_constructor
        {_Size'inches = Data.ProtoLens.fieldDefault,
         _Size'_unknownFields = []}
  parseMessage
    = let
        loop :: Size -> Data.ProtoLens.Encoding.Bytes.Parser Size
        loop x
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t) x)
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                       (Prelude.fmap
                                          Prelude.fromIntegral
                                          Data.ProtoLens.Encoding.Bytes.getVarInt)
                                       "inches"
                                loop (Lens.Family2.set (Data.ProtoLens.Field.field @"inches") y x)
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do loop Data.ProtoLens.defMessage) "Size"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                _v = Lens.Family2.view (Data.ProtoLens.Field.field @"inches") _x
              in
                if (Prelude.==) _v Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 8)
                      ((Prelude..)
                         Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral _v))
             (Data.ProtoLens.Encoding.Wire.buildFieldSet
                (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Size where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Size'_unknownFields x__)
             (Control.DeepSeq.deepseq (_Size'inches x__) ())
{- | Fields :
     
         * 'Proto.Haberdasher_Fields.items' @:: Lens' Test [Data.Int.Int32]@
         * 'Proto.Haberdasher_Fields.vec'items' @:: Lens' Test (Data.Vector.Unboxed.Vector Data.Int.Int32)@
         * 'Proto.Haberdasher_Fields.altPrices' @:: Lens' Test [Price]@
         * 'Proto.Haberdasher_Fields.vec'altPrices' @:: Lens' Test (Data.Vector.Vector Price)@ -}
data Test
  = Test'_constructor {_Test'items :: !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                       _Test'altPrices :: !(Data.Vector.Vector Price),
                       _Test'_unknownFields :: !Data.ProtoLens.FieldSet}
  deriving stock (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Test where
  showsPrec _ __x __s
    = Prelude.showChar
        '{'
        (Prelude.showString
           (Data.ProtoLens.showMessageShort __x) (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Test "items" [Data.Int.Int32] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Test'items (\ x__ y__ -> x__ {_Test'items = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Test "vec'items" (Data.Vector.Unboxed.Vector Data.Int.Int32) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Test'items (\ x__ y__ -> x__ {_Test'items = y__}))
        Prelude.id
instance Data.ProtoLens.Field.HasField Test "altPrices" [Price] where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Test'altPrices (\ x__ y__ -> x__ {_Test'altPrices = y__}))
        (Lens.Family2.Unchecked.lens
           Data.Vector.Generic.toList
           (\ _ y__ -> Data.Vector.Generic.fromList y__))
instance Data.ProtoLens.Field.HasField Test "vec'altPrices" (Data.Vector.Vector Price) where
  fieldOf _
    = (Prelude..)
        (Lens.Family2.Unchecked.lens
           _Test'altPrices (\ x__ y__ -> x__ {_Test'altPrices = y__}))
        Prelude.id
instance Data.ProtoLens.Message Test where
  messageName _ = Data.Text.pack "twirp.example.haberdasher.Test"
  packedMessageDescriptor _
    = "\n\
      \\EOTTest\DC2\DC4\n\
      \\ENQitems\CAN\SOH \ETX(\ENQR\ENQitems\DC2?\n\
      \\n\
      \alt_prices\CAN\STX \ETX(\v2 .twirp.example.haberdasher.PriceR\taltPrices"
  packedFileDescriptor _ = packedFileDescriptor
  fieldsByTag
    = let
        items__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "items"
              (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                 Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Packed (Data.ProtoLens.Field.field @"items")) ::
              Data.ProtoLens.FieldDescriptor Test
        altPrices__field_descriptor
          = Data.ProtoLens.FieldDescriptor
              "alt_prices"
              (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                 Data.ProtoLens.FieldTypeDescriptor Price)
              (Data.ProtoLens.RepeatedField
                 Data.ProtoLens.Unpacked
                 (Data.ProtoLens.Field.field @"altPrices")) ::
              Data.ProtoLens.FieldDescriptor Test
      in
        Data.Map.fromList
          [(Data.ProtoLens.Tag 1, items__field_descriptor),
           (Data.ProtoLens.Tag 2, altPrices__field_descriptor)]
  unknownFields
    = Lens.Family2.Unchecked.lens
        _Test'_unknownFields
        (\ x__ y__ -> x__ {_Test'_unknownFields = y__})
  defMessage
    = Test'_constructor
        {_Test'items = Data.Vector.Generic.empty,
         _Test'altPrices = Data.Vector.Generic.empty,
         _Test'_unknownFields = []}
  parseMessage
    = let
        loop ::
          Test
          -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector Data.ProtoLens.Encoding.Growing.RealWorld Price
             -> Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector Data.ProtoLens.Encoding.Growing.RealWorld Data.Int.Int32
                -> Data.ProtoLens.Encoding.Bytes.Parser Test
        loop x mutable'altPrices mutable'items
          = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
               if end then
                   do frozen'altPrices <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                            (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                               mutable'altPrices)
                      frozen'items <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                        (Data.ProtoLens.Encoding.Growing.unsafeFreeze mutable'items)
                      (let missing = []
                       in
                         if Prelude.null missing then
                             Prelude.return ()
                         else
                             Prelude.fail
                               ((Prelude.++)
                                  "Missing required fields: "
                                  (Prelude.show (missing :: [Prelude.String]))))
                      Prelude.return
                        (Lens.Family2.over
                           Data.ProtoLens.unknownFields (\ !t -> Prelude.reverse t)
                           (Lens.Family2.set
                              (Data.ProtoLens.Field.field @"vec'altPrices") frozen'altPrices
                              (Lens.Family2.set
                                 (Data.ProtoLens.Field.field @"vec'items") frozen'items x)))
               else
                   do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                      case tag of
                        8 -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (Prelude.fmap
                                           Prelude.fromIntegral
                                           Data.ProtoLens.Encoding.Bytes.getVarInt)
                                        "items"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'items y)
                                loop x mutable'altPrices v
                        10
                          -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                        Data.ProtoLens.Encoding.Bytes.isolate
                                          (Prelude.fromIntegral len)
                                          ((let
                                              ploop qs
                                                = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                     if packedEnd then
                                                         Prelude.return qs
                                                     else
                                                         do !q <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                                                    (Prelude.fmap
                                                                       Prelude.fromIntegral
                                                                       Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                    "items"
                                                            qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                     (Data.ProtoLens.Encoding.Growing.append
                                                                        qs q)
                                                            ploop qs'
                                            in ploop)
                                             mutable'items)
                                loop x mutable'altPrices y
                        18
                          -> do !y <- (Data.ProtoLens.Encoding.Bytes.<?>)
                                        (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                            Data.ProtoLens.Encoding.Bytes.isolate
                                              (Prelude.fromIntegral len)
                                              Data.ProtoLens.parseMessage)
                                        "alt_prices"
                                v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                       (Data.ProtoLens.Encoding.Growing.append mutable'altPrices y)
                                loop x v mutable'items
                        wire
                          -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                        wire
                                loop
                                  (Lens.Family2.over
                                     Data.ProtoLens.unknownFields (\ !t -> (:) y t) x)
                                  mutable'altPrices mutable'items
      in
        (Data.ProtoLens.Encoding.Bytes.<?>)
          (do mutable'altPrices <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
              mutable'items <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                 Data.ProtoLens.Encoding.Growing.new
              loop Data.ProtoLens.defMessage mutable'altPrices mutable'items)
          "Test"
  buildMessage
    = \ _x
        -> (Data.Monoid.<>)
             (let
                p = Lens.Family2.view (Data.ProtoLens.Field.field @"vec'items") _x
              in
                if Data.Vector.Generic.null p then
                    Data.Monoid.mempty
                else
                    (Data.Monoid.<>)
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                      ((\ bs
                          -> (Data.Monoid.<>)
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                               (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         (Data.ProtoLens.Encoding.Bytes.runBuilder
                            (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                               ((Prelude..)
                                  Data.ProtoLens.Encoding.Bytes.putVarInt Prelude.fromIntegral)
                               p))))
             ((Data.Monoid.<>)
                (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                   (\ _v
                      -> (Data.Monoid.<>)
                           (Data.ProtoLens.Encoding.Bytes.putVarInt 18)
                           ((Prelude..)
                              (\ bs
                                 -> (Data.Monoid.<>)
                                      (Data.ProtoLens.Encoding.Bytes.putVarInt
                                         (Prelude.fromIntegral (Data.ByteString.length bs)))
                                      (Data.ProtoLens.Encoding.Bytes.putBytes bs))
                              Data.ProtoLens.encodeMessage _v))
                   (Lens.Family2.view
                      (Data.ProtoLens.Field.field @"vec'altPrices") _x))
                (Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x)))
instance Control.DeepSeq.NFData Test where
  rnf
    = \ x__
        -> Control.DeepSeq.deepseq
             (_Test'_unknownFields x__)
             (Control.DeepSeq.deepseq
                (_Test'items x__)
                (Control.DeepSeq.deepseq (_Test'altPrices x__) ()))
data Haberdasher = Haberdasher {}
instance Data.ProtoLens.Service.Types.Service Haberdasher where
  type ServiceName Haberdasher = "Haberdasher"
  type ServicePackage Haberdasher = "twirp.example.haberdasher"
  type ServiceMethods Haberdasher = '["getBill", "makeHat"]
  packedServiceDescriptor _
    = "\n\
      \\vHaberdasher\DC2J\n\
      \\aMakeHat\DC2\US.twirp.example.haberdasher.Size\SUB\RS.twirp.example.haberdasher.Hat\DC2J\n\
      \\aGetBill\DC2\RS.twirp.example.haberdasher.Hat\SUB\US.twirp.example.haberdasher.Bill"
instance Data.ProtoLens.Service.Types.HasMethodImpl Haberdasher "makeHat" where
  type MethodName Haberdasher "makeHat" = "MakeHat"
  type MethodInput Haberdasher "makeHat" = Size
  type MethodOutput Haberdasher "makeHat" = Hat
  type MethodStreamingType Haberdasher "makeHat" = 'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Haberdasher "getBill" where
  type MethodName Haberdasher "getBill" = "GetBill"
  type MethodInput Haberdasher "getBill" = Hat
  type MethodOutput Haberdasher "getBill" = Bill
  type MethodStreamingType Haberdasher "getBill" = 'Data.ProtoLens.Service.Types.NonStreaming
data Health = Health {}
instance Data.ProtoLens.Service.Types.Service Health where
  type ServiceName Health = "Health"
  type ServicePackage Health = "twirp.example.haberdasher"
  type ServiceMethods Health = '["check"]
  packedServiceDescriptor _
    = "\n\
      \\ACKHealth\DC2I\n\
      \\ENQCheck\DC2\US.twirp.example.haberdasher.Ping\SUB\US.twirp.example.haberdasher.Pong"
instance Data.ProtoLens.Service.Types.HasMethodImpl Health "check" where
  type MethodName Health "check" = "Check"
  type MethodInput Health "check" = Ping
  type MethodOutput Health "check" = Pong
  type MethodStreamingType Health "check" = 'Data.ProtoLens.Service.Types.NonStreaming
packedFileDescriptor :: Data.ByteString.ByteString
packedFileDescriptor
  = "\n\
    \\DC1haberdasher.proto\DC2\EMtwirp.example.haberdasher\"\RS\n\
    \\EOTSize\DC2\SYN\n\
    \\ACKinches\CAN\SOH \SOH(\ENQR\ACKinches\"G\n\
    \\ETXHat\DC2\SYN\n\
    \\ACKinches\CAN\SOH \SOH(\ENQR\ACKinches\DC2\DC4\n\
    \\ENQcolor\CAN\STX \SOH(\tR\ENQcolor\DC2\DC2\n\
    \\EOTname\CAN\ETX \SOH(\tR\EOTname\"\240\SOH\n\
    \\EOTBill\DC26\n\
    \\ENQprice\CAN\SOH \SOH(\v2 .twirp.example.haberdasher.PriceR\ENQprice\DC2E\n\
    \\ACKstatus\CAN\STX \SOH(\SO2-.twirp.example.haberdasher.Bill.BillingStatusR\ACKstatus\DC2\ESC\n\
    \\bvat_info\CAN\ETX \SOH(\tH\NULR\avatInfo\DC2\ESC\n\
    \\bzip_code\CAN\EOT \SOH(\tH\NULR\azipCode\"&\n\
    \\rBillingStatus\DC2\v\n\
    \\aUN_PAID\DLE\NUL\DC2\b\n\
    \\EOTPAID\DLE\SOHB\a\n\
    \\ENQextra\"]\n\
    \\EOTTest\DC2\DC4\n\
    \\ENQitems\CAN\SOH \ETX(\ENQR\ENQitems\DC2?\n\
    \\n\
    \alt_prices\CAN\STX \ETX(\v2 .twirp.example.haberdasher.PriceR\taltPrices\"7\n\
    \\ENQPrice\DC2\CAN\n\
    \\adollars\CAN\SOH \SOH(\rR\adollars\DC2\DC4\n\
    \\ENQcents\CAN\STX \SOH(\rR\ENQcents\" \n\
    \\EOTPing\DC2\CAN\n\
    \\aservice\CAN\SOH \SOH(\tR\aservice\"\162\SOH\n\
    \\EOTPong\DC2\SYN\n\
    \\ACKstatus\CAN\SOH \SOH(\tR\ACKstatus\DC25\n\
    \\ENQstuff\CAN\STX \ETX(\v2\US.twirp.example.haberdasher.TestR\ENQstuff\DC2\SO\n\
    \\SOHt\CAN\ETX \SOH(\rH\NULR\SOHt\DC2\SO\n\
    \\SOHu\CAN\EOT \SOH(\tH\NULR\SOHu\DC2\SO\n\
    \\STXid\CAN\ENQ \SOH(\ENQR\STXid\DC2\DC2\n\
    \\EOTtype\CAN\ACK \SOH(\tR\EOTtypeB\a\n\
    \\ENQextra\"1\n\
    \\DLEFieldTestMessage\DC2\GS\n\
    \\n\
    \test_bytes\CAN\ETX \SOH(\fR\ttestBytes\"\SO\n\
    \\fEmptyMessage2\165\SOH\n\
    \\vHaberdasher\DC2J\n\
    \\aMakeHat\DC2\US.twirp.example.haberdasher.Size\SUB\RS.twirp.example.haberdasher.Hat\DC2J\n\
    \\aGetBill\DC2\RS.twirp.example.haberdasher.Hat\SUB\US.twirp.example.haberdasher.Bill2S\n\
    \\ACKHealth\DC2I\n\
    \\ENQCheck\DC2\US.twirp.example.haberdasher.Ping\SUB\US.twirp.example.haberdasher.PongB\rZ\vhaberdasherJ\215\DLE\n\
    \\ACK\DC2\EOT\NUL\NULL\ETB\n\
    \\b\n\
    \\SOH\f\DC2\ETX\NUL\NUL\DC2\n\
    \5\n\
    \\SOH\STX\DC2\ETX\EOT\NUL\"2+ This is an example set of twirp services.\n\
    \\n\
    \\b\n\
    \\SOH\b\DC2\ETX\ENQ\NUL\"\n\
    \\t\n\
    \\STX\b\v\DC2\ETX\ENQ\NUL\"\n\
    \9\n\
    \\STX\ACK\NUL\DC2\EOT\b\NUL\r\SOH\SUB- Haberdasher service makes hats for clients.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\NUL\SOH\DC2\ETX\b\b\DC3\n\
    \M\n\
    \\EOT\ACK\NUL\STX\NUL\DC2\ETX\n\
    \\STX#\SUB@ MakeHat produces a hat of mysterious, randomly-selected color!\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\SOH\DC2\ETX\n\
    \\ACK\r\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\STX\DC2\ETX\n\
    \\SI\DC3\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\NUL\ETX\DC2\ETX\n\
    \\RS!\n\
    \\ETB\n\
    \\EOT\ACK\NUL\STX\SOH\DC2\ETX\f\STX#\SUB\n\
    \ Get paid\n\
    \\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\SOH\DC2\ETX\f\ACK\r\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\STX\DC2\ETX\f\SI\DC2\n\
    \\f\n\
    \\ENQ\ACK\NUL\STX\SOH\ETX\DC2\ETX\f\GS!\n\
    \\"\n\
    \\STX\ACK\SOH\DC2\EOT\DLE\NUL\DC2\SOH\SUB\SYN Health check service\n\
    \\n\
    \\n\
    \\n\
    \\ETX\ACK\SOH\SOH\DC2\ETX\DLE\b\SO\n\
    \\v\n\
    \\EOT\ACK\SOH\STX\NUL\DC2\ETX\DC1\STX\"\n\
    \\f\n\
    \\ENQ\ACK\SOH\STX\NUL\SOH\DC2\ETX\DC1\ACK\v\n\
    \\f\n\
    \\ENQ\ACK\SOH\STX\NUL\STX\DC2\ETX\DC1\r\DC1\n\
    \\f\n\
    \\ENQ\ACK\SOH\STX\NUL\ETX\DC2\ETX\DC1\FS \n\
    \'\n\
    \\STX\EOT\NUL\DC2\EOT\NAK\NUL\ETB\SOH\SUB\ESC Size of a Hat, in inches.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\NUL\SOH\DC2\ETX\NAK\b\f\n\
    \\SUB\n\
    \\EOT\EOT\NUL\STX\NUL\DC2\ETX\SYN\STX\DC3\"\r must be > 0\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ENQ\DC2\ETX\SYN\STX\a\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\SOH\DC2\ETX\SYN\b\SO\n\
    \\f\n\
    \\ENQ\EOT\NUL\STX\NUL\ETX\DC2\ETX\SYN\DC1\DC2\n\
    \A\n\
    \\STX\EOT\SOH\DC2\EOT\SUB\NUL\RS\SOH\SUB5 A Hat is a piece of headwear made by a Haberdasher.\n\
    \\n\
    \\n\
    \\n\
    \\ETX\EOT\SOH\SOH\DC2\ETX\SUB\b\v\n\
    \\v\n\
    \\EOT\EOT\SOH\STX\NUL\DC2\ETX\ESC\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ENQ\DC2\ETX\ESC\STX\a\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\SOH\DC2\ETX\ESC\b\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\NUL\ETX\DC2\ETX\ESC\DC1\DC2\n\
    \'\n\
    \\EOT\EOT\SOH\STX\SOH\DC2\ETX\FS\STX\DC3\"\SUB anything but \"invisible\"\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ENQ\DC2\ETX\FS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\SOH\DC2\ETX\FS\t\SO\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\SOH\ETX\DC2\ETX\FS\DC1\DC2\n\
    \\FS\n\
    \\EOT\EOT\SOH\STX\STX\DC2\ETX\GS\STX\DC2\"\SI i.e. \"bowler\"\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ENQ\DC2\ETX\GS\STX\b\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\SOH\DC2\ETX\GS\t\r\n\
    \\f\n\
    \\ENQ\EOT\SOH\STX\STX\ETX\DC2\ETX\GS\DLE\DC1\n\
    \\n\
    \\n\
    \\STX\EOT\STX\DC2\EOT \NUL-\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\STX\SOH\DC2\ETX \b\f\n\
    \\v\n\
    \\EOT\EOT\STX\STX\NUL\DC2\ETX!\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ACK\DC2\ETX!\STX\a\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\SOH\DC2\ETX!\b\r\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\NUL\ETX\DC2\ETX!\DLE\DC1\n\
    \\v\n\
    \\EOT\EOT\STX\STX\SOH\DC2\ETX\"\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ACK\DC2\ETX\"\STX\SI\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\SOH\DC2\ETX\"\DLE\SYN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\SOH\ETX\DC2\ETX\"\EM\SUB\n\
    \\f\n\
    \\EOT\EOT\STX\b\NUL\DC2\EOT$\STX'\ETX\n\
    \\f\n\
    \\ENQ\EOT\STX\b\NUL\SOH\DC2\ETX$\b\r\n\
    \\v\n\
    \\EOT\EOT\STX\STX\STX\DC2\ETX%\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ENQ\DC2\ETX%\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\SOH\DC2\ETX%\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\STX\ETX\DC2\ETX%\SYN\ETB\n\
    \\v\n\
    \\EOT\EOT\STX\STX\ETX\DC2\ETX&\EOT\CAN\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ENQ\DC2\ETX&\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\SOH\DC2\ETX&\v\DC3\n\
    \\f\n\
    \\ENQ\EOT\STX\STX\ETX\ETX\DC2\ETX&\SYN\ETB\n\
    \\f\n\
    \\EOT\EOT\STX\EOT\NUL\DC2\EOT)\STX,\ETX\n\
    \\f\n\
    \\ENQ\EOT\STX\EOT\NUL\SOH\DC2\ETX)\a\DC4\n\
    \\r\n\
    \\ACK\EOT\STX\EOT\NUL\STX\NUL\DC2\ETX*\EOT\DLE\n\
    \\SO\n\
    \\a\EOT\STX\EOT\NUL\STX\NUL\SOH\DC2\ETX*\EOT\v\n\
    \\SO\n\
    \\a\EOT\STX\EOT\NUL\STX\NUL\STX\DC2\ETX*\SO\SI\n\
    \\r\n\
    \\ACK\EOT\STX\EOT\NUL\STX\SOH\DC2\ETX+\EOT\r\n\
    \\SO\n\
    \\a\EOT\STX\EOT\NUL\STX\SOH\SOH\DC2\ETX+\EOT\b\n\
    \\SO\n\
    \\a\EOT\STX\EOT\NUL\STX\SOH\STX\DC2\ETX+\v\f\n\
    \\n\
    \\n\
    \\STX\EOT\ETX\DC2\EOT/\NUL2\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ETX\SOH\DC2\ETX/\b\f\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\NUL\DC2\ETX0\STX\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\EOT\DC2\ETX0\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ENQ\DC2\ETX0\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\SOH\DC2\ETX0\DC1\SYN\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\NUL\ETX\DC2\ETX0\EM\SUB\n\
    \\v\n\
    \\EOT\EOT\ETX\STX\SOH\DC2\ETX1\STX \n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\EOT\DC2\ETX1\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ACK\DC2\ETX1\v\DLE\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\SOH\DC2\ETX1\DC1\ESC\n\
    \\f\n\
    \\ENQ\EOT\ETX\STX\SOH\ETX\DC2\ETX1\RS\US\n\
    \\n\
    \\n\
    \\STX\EOT\EOT\DC2\EOT4\NUL7\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\EOT\SOH\DC2\ETX4\b\r\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\NUL\DC2\ETX5\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ENQ\DC2\ETX5\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\SOH\DC2\ETX5\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\NUL\ETX\DC2\ETX5\DC3\DC4\n\
    \\v\n\
    \\EOT\EOT\EOT\STX\SOH\DC2\ETX6\STX\DC3\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ENQ\DC2\ETX6\STX\b\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\SOH\DC2\ETX6\t\SO\n\
    \\f\n\
    \\ENQ\EOT\EOT\STX\SOH\ETX\DC2\ETX6\DC1\DC2\n\
    \\n\
    \\n\
    \\STX\EOT\ENQ\DC2\EOT9\NUL;\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ENQ\SOH\DC2\ETX9\b\f\n\
    \\v\n\
    \\EOT\EOT\ENQ\STX\NUL\DC2\ETX:\STX\NAK\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ENQ\DC2\ETX:\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\SOH\DC2\ETX:\t\DLE\n\
    \\f\n\
    \\ENQ\EOT\ENQ\STX\NUL\ETX\DC2\ETX:\DC3\DC4\n\
    \\n\
    \\n\
    \\STX\EOT\ACK\DC2\EOT=\NULF\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\ACK\SOH\DC2\ETX=\b\f\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\NUL\DC2\ETX>\STX\DC4\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ENQ\DC2\ETX>\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\SOH\DC2\ETX>\t\SI\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\NUL\ETX\DC2\ETX>\DC2\DC3\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\SOH\DC2\ETX?\STX\SUB\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\EOT\DC2\ETX?\STX\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ACK\DC2\ETX?\v\SI\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\SOH\DC2\ETX?\DLE\NAK\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\SOH\ETX\DC2\ETX?\CAN\EM\n\
    \\f\n\
    \\EOT\EOT\ACK\b\NUL\DC2\EOT@\STXC\ETX\n\
    \\f\n\
    \\ENQ\EOT\ACK\b\NUL\SOH\DC2\ETX@\b\r\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\STX\DC2\ETXA\EOT\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ENQ\DC2\ETXA\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\SOH\DC2\ETXA\v\f\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\STX\ETX\DC2\ETXA\SI\DLE\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\ETX\DC2\ETXB\EOT\DC1\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ENQ\DC2\ETXB\EOT\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\SOH\DC2\ETXB\v\f\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ETX\ETX\DC2\ETXB\SI\DLE\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\EOT\DC2\ETXD\STX\SI\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ENQ\DC2\ETXD\STX\a\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\SOH\DC2\ETXD\b\n\
    \\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\EOT\ETX\DC2\ETXD\r\SO\n\
    \\v\n\
    \\EOT\EOT\ACK\STX\ENQ\DC2\ETXE\STX\DC2\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\ENQ\DC2\ETXE\STX\b\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\SOH\DC2\ETXE\t\r\n\
    \\f\n\
    \\ENQ\EOT\ACK\STX\ENQ\ETX\DC2\ETXE\DLE\DC1\n\
    \\n\
    \\n\
    \\STX\EOT\a\DC2\EOTH\NULJ\SOH\n\
    \\n\
    \\n\
    \\ETX\EOT\a\SOH\DC2\ETXH\b\CAN\n\
    \\v\n\
    \\EOT\EOT\a\STX\NUL\DC2\ETXI\STX\ETB\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ENQ\DC2\ETXI\STX\a\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\SOH\DC2\ETXI\b\DC2\n\
    \\f\n\
    \\ENQ\EOT\a\STX\NUL\ETX\DC2\ETXI\NAK\SYN\n\
    \\t\n\
    \\STX\EOT\b\DC2\ETXL\NUL\ETB\n\
    \\n\
    \\n\
    \\ETX\EOT\b\SOH\DC2\ETXL\b\DC4b\ACKproto3"