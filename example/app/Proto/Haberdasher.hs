{- This file was auto-generated from haberdasher.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds,
  BangPatterns, TypeApplications #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Haberdasher
       (Haberdasher(..), Health(..), Bill(), Bill'Extra(..),
        _Bill'VatInfo, _Bill'ZipCode, Bill'BillingStatus(..),
        Bill'BillingStatus(), Bill'BillingStatus'UnrecognizedValue,
        EmptyMessage(), FieldTestMessage(), Hat(), Ping(), Pong(),
        Pong'Extra(..), _Pong'T, _Pong'U, Price(), Size(), Test())
       where
import qualified Data.ProtoLens.Runtime.Control.DeepSeq
       as Control.DeepSeq
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Prism
       as Data.ProtoLens.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Monoid as Data.Monoid
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens
       as Data.ProtoLens
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Bytes
       as Data.ProtoLens.Encoding.Bytes
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Growing
       as Data.ProtoLens.Encoding.Growing
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Parser.Unsafe
       as Data.ProtoLens.Encoding.Parser.Unsafe
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Encoding.Wire
       as Data.ProtoLens.Encoding.Wire
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Field
       as Data.ProtoLens.Field
import qualified Data.ProtoLens.Runtime.Data.ProtoLens.Message.Enum
       as Data.ProtoLens.Message.Enum
import qualified
       Data.ProtoLens.Runtime.Data.ProtoLens.Service.Types
       as Data.ProtoLens.Service.Types
import qualified Data.ProtoLens.Runtime.Lens.Family2
       as Lens.Family2
import qualified Data.ProtoLens.Runtime.Lens.Family2.Unchecked
       as Lens.Family2.Unchecked
import qualified Data.ProtoLens.Runtime.Data.Text as Data.Text
import qualified Data.ProtoLens.Runtime.Data.Map as Data.Map
import qualified Data.ProtoLens.Runtime.Data.ByteString
       as Data.ByteString
import qualified Data.ProtoLens.Runtime.Data.ByteString.Char8
       as Data.ByteString.Char8
import qualified Data.ProtoLens.Runtime.Data.Text.Encoding
       as Data.Text.Encoding
import qualified Data.ProtoLens.Runtime.Data.Vector as Data.Vector
import qualified Data.ProtoLens.Runtime.Data.Vector.Generic
       as Data.Vector.Generic
import qualified Data.ProtoLens.Runtime.Data.Vector.Unboxed
       as Data.Vector.Unboxed
import qualified Data.ProtoLens.Runtime.Text.Read as Text.Read

{- | Fields :

    * 'Proto.Haberdasher_Fields.price' @:: Lens' Bill Price@
    * 'Proto.Haberdasher_Fields.maybe'price' @:: Lens' Bill (Prelude.Maybe Price)@
    * 'Proto.Haberdasher_Fields.status' @:: Lens' Bill Bill'BillingStatus@
    * 'Proto.Haberdasher_Fields.maybe'extra' @:: Lens' Bill (Prelude.Maybe Bill'Extra)@
    * 'Proto.Haberdasher_Fields.maybe'vatInfo' @:: Lens' Bill (Prelude.Maybe Data.Text.Text)@
    * 'Proto.Haberdasher_Fields.vatInfo' @:: Lens' Bill Data.Text.Text@
    * 'Proto.Haberdasher_Fields.maybe'zipCode' @:: Lens' Bill (Prelude.Maybe Data.Text.Text)@
    * 'Proto.Haberdasher_Fields.zipCode' @:: Lens' Bill Data.Text.Text@
 -}
data Bill = Bill{_Bill'price :: !(Prelude.Maybe Price),
                 _Bill'status :: !Bill'BillingStatus,
                 _Bill'extra :: !(Prelude.Maybe Bill'Extra),
                 _Bill'_unknownFields :: !Data.ProtoLens.FieldSet}
              deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Bill where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
data Bill'Extra = Bill'VatInfo !Data.Text.Text
                | Bill'ZipCode !Data.Text.Text
                    deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Bill "price" (Price) where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Bill'price
               (\ x__ y__ -> x__{_Bill'price = y__}))
              Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.defMessage
instance Data.ProtoLens.Field.HasField Bill "maybe'price"
           (Prelude.Maybe Price)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Bill'price
               (\ x__ y__ -> x__{_Bill'price = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Bill "status"
           (Bill'BillingStatus)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Bill'status
               (\ x__ y__ -> x__{_Bill'status = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Bill "maybe'extra"
           (Prelude.Maybe Bill'Extra)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Bill'extra
               (\ x__ y__ -> x__{_Bill'extra = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Bill "maybe'vatInfo"
           (Prelude.Maybe Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Bill'extra
               (\ x__ y__ -> x__{_Bill'extra = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Bill'VatInfo x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Bill'VatInfo y__)
instance Data.ProtoLens.Field.HasField Bill "vatInfo"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Bill'extra
               (\ x__ y__ -> x__{_Bill'extra = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Bill'VatInfo x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Bill'VatInfo y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault
instance Data.ProtoLens.Field.HasField Bill "maybe'zipCode"
           (Prelude.Maybe Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Bill'extra
               (\ x__ y__ -> x__{_Bill'extra = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Bill'ZipCode x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Bill'ZipCode y__)
instance Data.ProtoLens.Field.HasField Bill "zipCode"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Bill'extra
               (\ x__ y__ -> x__{_Bill'extra = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Bill'ZipCode x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Bill'ZipCode y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault
instance Data.ProtoLens.Message Bill where
        messageName _ = Data.Text.pack "twirp.example.haberdasher.Bill"
        fieldsByTag
          = let price__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "price"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Price)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'price"))
                      :: Data.ProtoLens.FieldDescriptor Bill
                status__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "status"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor Bill'BillingStatus)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"status"))
                      :: Data.ProtoLens.FieldDescriptor Bill
                vatInfo__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "vat_info"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'vatInfo"))
                      :: Data.ProtoLens.FieldDescriptor Bill
                zipCode__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "zip_code"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'zipCode"))
                      :: Data.ProtoLens.FieldDescriptor Bill
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, price__field_descriptor),
                 (Data.ProtoLens.Tag 2, status__field_descriptor),
                 (Data.ProtoLens.Tag 3, vatInfo__field_descriptor),
                 (Data.ProtoLens.Tag 4, zipCode__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Bill'_unknownFields
              (\ x__ y__ -> x__{_Bill'_unknownFields = y__})
        defMessage
          = Bill{_Bill'price = Prelude.Nothing,
                 _Bill'status = Data.ProtoLens.fieldDefault,
                 _Bill'extra = Prelude.Nothing, _Bill'_unknownFields = ([])}
        parseMessage
          = let loop :: Bill -> Data.ProtoLens.Encoding.Bytes.Parser Bill
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.isolate
                                                    (Prelude.fromIntegral len)
                                                    Data.ProtoLens.parseMessage)
                                                Data.ProtoLens.Encoding.Bytes.<?> "price"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"price") y
                                              x)
                                16 -> do y <- (Prelude.fmap Prelude.toEnum
                                                 (Prelude.fmap Prelude.fromIntegral
                                                    Data.ProtoLens.Encoding.Bytes.getVarInt))
                                                Data.ProtoLens.Encoding.Bytes.<?> "status"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"status")
                                              y
                                              x)
                                26 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "vat_info"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"vatInfo")
                                              y
                                              x)
                                34 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "zip_code"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"zipCode")
                                              y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "Bill"
        buildMessage
          = (\ _x ->
               (case
                  Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'price") _x of
                    (Prelude.Nothing) -> Data.Monoid.mempty
                    Prelude.Just _v -> (Data.ProtoLens.Encoding.Bytes.putVarInt 10)
                                         Data.Monoid.<>
                                         (((\ bs ->
                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                                Data.Monoid.<>
                                                Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                            Prelude.. Data.ProtoLens.encodeMessage)
                                           _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 16) Data.Monoid.<>
                        (((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                            Prelude.fromIntegral)
                           Prelude.. Prelude.fromEnum)
                          _v)
                   Data.Monoid.<>
                   (case
                      Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'extra") _x of
                        (Prelude.Nothing) -> Data.Monoid.mempty
                        Prelude.Just
                          (Bill'VatInfo v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt 26)
                                                Data.Monoid.<>
                                                (((\ bs ->
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                       Data.Monoid.<>
                                                       Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                   Prelude.. Data.Text.Encoding.encodeUtf8)
                                                  v
                        Prelude.Just
                          (Bill'ZipCode v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt 34)
                                                Data.Monoid.<>
                                                (((\ bs ->
                                                     (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                        (Prelude.fromIntegral
                                                           (Data.ByteString.length bs)))
                                                       Data.Monoid.<>
                                                       Data.ProtoLens.Encoding.Bytes.putBytes bs))
                                                   Prelude.. Data.Text.Encoding.encodeUtf8)
                                                  v)
                     Data.Monoid.<>
                     Data.ProtoLens.Encoding.Wire.buildFieldSet
                       (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Bill where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_Bill'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_Bill'price x__)
                    (Control.DeepSeq.deepseq (_Bill'status x__)
                       (Control.DeepSeq.deepseq (_Bill'extra x__) (())))))
instance Control.DeepSeq.NFData Bill'Extra where
        rnf (Bill'VatInfo x__) = Control.DeepSeq.rnf x__
        rnf (Bill'ZipCode x__) = Control.DeepSeq.rnf x__
_Bill'VatInfo ::
              Data.ProtoLens.Prism.Prism' Bill'Extra Data.Text.Text
_Bill'VatInfo
  = Data.ProtoLens.Prism.prism' Bill'VatInfo
      (\ p__ ->
         case p__ of
             Bill'VatInfo p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Bill'ZipCode ::
              Data.ProtoLens.Prism.Prism' Bill'Extra Data.Text.Text
_Bill'ZipCode
  = Data.ProtoLens.Prism.prism' Bill'ZipCode
      (\ p__ ->
         case p__ of
             Bill'ZipCode p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
newtype Bill'BillingStatus'UnrecognizedValue = Bill'BillingStatus'UnrecognizedValue Data.Int.Int32
                                                 deriving (Prelude.Eq, Prelude.Ord, Prelude.Show)
data Bill'BillingStatus = Bill'UN_PAID
                        | Bill'PAID
                        | Bill'BillingStatus'Unrecognized !Bill'BillingStatus'UnrecognizedValue
                            deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
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
          (Bill'BillingStatus'Unrecognized
             (Bill'BillingStatus'UnrecognizedValue k))
          = Prelude.show k
        readEnum k
          | (k) Prelude.== "UN_PAID" = Prelude.Just Bill'UN_PAID
          | (k) Prelude.== "PAID" = Prelude.Just Bill'PAID
        readEnum k
          = (Text.Read.readMaybe k) Prelude.>>= Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Bill'BillingStatus where
        minBound = Bill'UN_PAID
        maxBound = Bill'PAID
instance Prelude.Enum Bill'BillingStatus where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 (("toEnum: unknown value for enum BillingStatus: ") Prelude.++
                    Prelude.show k__))
              Prelude.id
              (Data.ProtoLens.maybeToEnum k__)
        fromEnum Bill'UN_PAID = 0
        fromEnum Bill'PAID = 1
        fromEnum
          (Bill'BillingStatus'Unrecognized
             (Bill'BillingStatus'UnrecognizedValue k))
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
        rnf x__ = Prelude.seq x__ (())
{- | Fields :

 -}
data EmptyMessage = EmptyMessage{_EmptyMessage'_unknownFields ::
                                 !Data.ProtoLens.FieldSet}
                      deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show EmptyMessage where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Message EmptyMessage where
        messageName _
          = Data.Text.pack "twirp.example.haberdasher.EmptyMessage"
        fieldsByTag = let in Data.Map.fromList []
        unknownFields
          = Lens.Family2.Unchecked.lens _EmptyMessage'_unknownFields
              (\ x__ y__ -> x__{_EmptyMessage'_unknownFields = y__})
        defMessage = EmptyMessage{_EmptyMessage'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     EmptyMessage -> Data.ProtoLens.Encoding.Bytes.Parser EmptyMessage
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "EmptyMessage"
        buildMessage
          = (\ _x ->
               Data.ProtoLens.Encoding.Wire.buildFieldSet
                 (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData EmptyMessage where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_EmptyMessage'_unknownFields x__) (()))
{- | Fields :

    * 'Proto.Haberdasher_Fields.testBytes' @:: Lens' FieldTestMessage Data.ByteString.ByteString@
 -}
data FieldTestMessage = FieldTestMessage{_FieldTestMessage'testBytes
                                         :: !Data.ByteString.ByteString,
                                         _FieldTestMessage'_unknownFields ::
                                         !Data.ProtoLens.FieldSet}
                          deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show FieldTestMessage where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField FieldTestMessage "testBytes"
           (Data.ByteString.ByteString)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _FieldTestMessage'testBytes
               (\ x__ y__ -> x__{_FieldTestMessage'testBytes = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message FieldTestMessage where
        messageName _
          = Data.Text.pack "twirp.example.haberdasher.FieldTestMessage"
        fieldsByTag
          = let testBytes__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "test_bytes"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"testBytes"))
                      :: Data.ProtoLens.FieldDescriptor FieldTestMessage
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 3, testBytes__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _FieldTestMessage'_unknownFields
              (\ x__ y__ -> x__{_FieldTestMessage'_unknownFields = y__})
        defMessage
          = FieldTestMessage{_FieldTestMessage'testBytes =
                               Data.ProtoLens.fieldDefault,
                             _FieldTestMessage'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     FieldTestMessage ->
                       Data.ProtoLens.Encoding.Bytes.Parser FieldTestMessage
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                26 -> do y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                  Data.ProtoLens.Encoding.Bytes.getBytes
                                                    (Prelude.fromIntegral len))
                                                Data.ProtoLens.Encoding.Bytes.<?> "test_bytes"
                                         loop
                                           (Lens.Family2.set
                                              (Data.ProtoLens.Field.field @"testBytes")
                                              y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "FieldTestMessage"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"testBytes") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 26) Data.Monoid.<>
                      (\ bs ->
                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                           Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                        _v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData FieldTestMessage where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_FieldTestMessage'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_FieldTestMessage'testBytes x__) (())))
{- | Fields :

    * 'Proto.Haberdasher_Fields.inches' @:: Lens' Hat Data.Int.Int32@
    * 'Proto.Haberdasher_Fields.color' @:: Lens' Hat Data.Text.Text@
    * 'Proto.Haberdasher_Fields.name' @:: Lens' Hat Data.Text.Text@
 -}
data Hat = Hat{_Hat'inches :: !Data.Int.Int32,
               _Hat'color :: !Data.Text.Text, _Hat'name :: !Data.Text.Text,
               _Hat'_unknownFields :: !Data.ProtoLens.FieldSet}
             deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Hat where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Hat "inches"
           (Data.Int.Int32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Hat'inches
               (\ x__ y__ -> x__{_Hat'inches = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Hat "color" (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Hat'color
               (\ x__ y__ -> x__{_Hat'color = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Hat "name" (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Hat'name
               (\ x__ y__ -> x__{_Hat'name = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message Hat where
        messageName _ = Data.Text.pack "twirp.example.haberdasher.Hat"
        fieldsByTag
          = let inches__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "inches"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"inches"))
                      :: Data.ProtoLens.FieldDescriptor Hat
                color__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "color"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"color"))
                      :: Data.ProtoLens.FieldDescriptor Hat
                name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"name"))
                      :: Data.ProtoLens.FieldDescriptor Hat
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, inches__field_descriptor),
                 (Data.ProtoLens.Tag 2, color__field_descriptor),
                 (Data.ProtoLens.Tag 3, name__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Hat'_unknownFields
              (\ x__ y__ -> x__{_Hat'_unknownFields = y__})
        defMessage
          = Hat{_Hat'inches = Data.ProtoLens.fieldDefault,
                _Hat'color = Data.ProtoLens.fieldDefault,
                _Hat'name = Data.ProtoLens.fieldDefault,
                _Hat'_unknownFields = ([])}
        parseMessage
          = let loop :: Hat -> Data.ProtoLens.Encoding.Bytes.Parser Hat
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                8 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "inches"
                                        loop
                                          (Lens.Family2.set (Data.ProtoLens.Field.field @"inches") y
                                             x)
                                18 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "color"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"color") y
                                              x)
                                26 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "name"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"name") y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "Hat"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"inches") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         Prelude.fromIntegral)
                        _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"color") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                        (((\ bs ->
                             (Data.ProtoLens.Encoding.Bytes.putVarInt
                                (Prelude.fromIntegral (Data.ByteString.length bs)))
                               Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                           Prelude.. Data.Text.Encoding.encodeUtf8)
                          _v)
                   Data.Monoid.<>
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"name") _x
                      in
                      if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                        Data.Monoid.mempty else
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 26) Data.Monoid.<>
                          (((\ bs ->
                               (Data.ProtoLens.Encoding.Bytes.putVarInt
                                  (Prelude.fromIntegral (Data.ByteString.length bs)))
                                 Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                             Prelude.. Data.Text.Encoding.encodeUtf8)
                            _v)
                     Data.Monoid.<>
                     Data.ProtoLens.Encoding.Wire.buildFieldSet
                       (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Hat where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_Hat'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_Hat'inches x__)
                    (Control.DeepSeq.deepseq (_Hat'color x__)
                       (Control.DeepSeq.deepseq (_Hat'name x__) (())))))
{- | Fields :

    * 'Proto.Haberdasher_Fields.service' @:: Lens' Ping Data.Text.Text@
 -}
data Ping = Ping{_Ping'service :: !Data.Text.Text,
                 _Ping'_unknownFields :: !Data.ProtoLens.FieldSet}
              deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Ping where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Ping "service"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Ping'service
               (\ x__ y__ -> x__{_Ping'service = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message Ping where
        messageName _ = Data.Text.pack "twirp.example.haberdasher.Ping"
        fieldsByTag
          = let service__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "service"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"service"))
                      :: Data.ProtoLens.FieldDescriptor Ping
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, service__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Ping'_unknownFields
              (\ x__ y__ -> x__{_Ping'_unknownFields = y__})
        defMessage
          = Ping{_Ping'service = Data.ProtoLens.fieldDefault,
                 _Ping'_unknownFields = ([])}
        parseMessage
          = let loop :: Ping -> Data.ProtoLens.Encoding.Bytes.Parser Ping
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "service"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"service")
                                              y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "Ping"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"service") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (((\ bs ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                             Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Prelude.. Data.Text.Encoding.encodeUtf8)
                        _v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Ping where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_Ping'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_Ping'service x__) (())))
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
    * 'Proto.Haberdasher_Fields.u' @:: Lens' Pong Data.Text.Text@
 -}
data Pong = Pong{_Pong'status :: !Data.Text.Text,
                 _Pong'stuff :: !(Data.Vector.Vector Test),
                 _Pong'id :: !Data.Int.Int32, _Pong'type' :: !Data.Text.Text,
                 _Pong'extra :: !(Prelude.Maybe Pong'Extra),
                 _Pong'_unknownFields :: !Data.ProtoLens.FieldSet}
              deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Pong where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
data Pong'Extra = Pong'T !Data.Word.Word32
                | Pong'U !Data.Text.Text
                    deriving (Prelude.Show, Prelude.Eq, Prelude.Ord)
instance Data.ProtoLens.Field.HasField Pong "status"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Pong'status
               (\ x__ y__ -> x__{_Pong'status = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Pong "stuff" ([Test]) where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Pong'stuff
               (\ x__ y__ -> x__{_Pong'stuff = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField Pong "vec'stuff"
           (Data.Vector.Vector Test)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Pong'stuff
               (\ x__ y__ -> x__{_Pong'stuff = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Pong "id" (Data.Int.Int32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Pong'id
               (\ x__ y__ -> x__{_Pong'id = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Pong "type'"
           (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Pong'type'
               (\ x__ y__ -> x__{_Pong'type' = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Pong "maybe'extra"
           (Prelude.Maybe Pong'Extra)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Pong'extra
               (\ x__ y__ -> x__{_Pong'extra = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Pong "maybe't"
           (Prelude.Maybe Data.Word.Word32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Pong'extra
               (\ x__ y__ -> x__{_Pong'extra = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Pong'T x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Pong'T y__)
instance Data.ProtoLens.Field.HasField Pong "t" (Data.Word.Word32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Pong'extra
               (\ x__ y__ -> x__{_Pong'extra = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Pong'T x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Pong'T y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault
instance Data.ProtoLens.Field.HasField Pong "maybe'u"
           (Prelude.Maybe Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Pong'extra
               (\ x__ y__ -> x__{_Pong'extra = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens
                (\ x__ ->
                   case x__ of
                       Prelude.Just (Pong'U x__val) -> Prelude.Just x__val
                       _otherwise -> Prelude.Nothing)
                (\ _ y__ -> Prelude.fmap Pong'U y__)
instance Data.ProtoLens.Field.HasField Pong "u" (Data.Text.Text)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Pong'extra
               (\ x__ y__ -> x__{_Pong'extra = y__}))
              Prelude..
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Pong'U x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Pong'U y__))
                Prelude.. Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault
instance Data.ProtoLens.Message Pong where
        messageName _ = Data.Text.pack "twirp.example.haberdasher.Pong"
        fieldsByTag
          = let status__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "status"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"status"))
                      :: Data.ProtoLens.FieldDescriptor Pong
                stuff__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "stuff"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Test)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"stuff"))
                      :: Data.ProtoLens.FieldDescriptor Pong
                id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"id"))
                      :: Data.ProtoLens.FieldDescriptor Pong
                type'__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "type"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"type'"))
                      :: Data.ProtoLens.FieldDescriptor Pong
                t__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "t"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe't"))
                      :: Data.ProtoLens.FieldDescriptor Pong
                u__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "u"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.OptionalField
                         (Data.ProtoLens.Field.field @"maybe'u"))
                      :: Data.ProtoLens.FieldDescriptor Pong
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, status__field_descriptor),
                 (Data.ProtoLens.Tag 2, stuff__field_descriptor),
                 (Data.ProtoLens.Tag 5, id__field_descriptor),
                 (Data.ProtoLens.Tag 6, type'__field_descriptor),
                 (Data.ProtoLens.Tag 3, t__field_descriptor),
                 (Data.ProtoLens.Tag 4, u__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Pong'_unknownFields
              (\ x__ y__ -> x__{_Pong'_unknownFields = y__})
        defMessage
          = Pong{_Pong'status = Data.ProtoLens.fieldDefault,
                 _Pong'stuff = Data.Vector.Generic.empty,
                 _Pong'id = Data.ProtoLens.fieldDefault,
                 _Pong'type' = Data.ProtoLens.fieldDefault,
                 _Pong'extra = Prelude.Nothing, _Pong'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     Pong ->
                       Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                         Data.ProtoLens.Encoding.Growing.RealWorld
                         Test
                         -> Data.ProtoLens.Encoding.Bytes.Parser Pong
                loop x mutable'stuff
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do frozen'stuff <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'stuff)
                            let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"vec'stuff")
                                    frozen'stuff
                                    x))
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                10 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "status"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"status")
                                              y
                                              x)
                                           mutable'stuff
                                18 -> do !y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                     (Prelude.fromIntegral len)
                                                     Data.ProtoLens.parseMessage)
                                                 Data.ProtoLens.Encoding.Bytes.<?> "stuff"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append
                                                   mutable'stuff
                                                   y)
                                         loop x v
                                40 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "id"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"id") y x)
                                           mutable'stuff
                                50 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "type"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"type'") y
                                              x)
                                           mutable'stuff
                                24 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "t"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"t") y x)
                                           mutable'stuff
                                34 -> do y <- (do value <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                              Data.ProtoLens.Encoding.Bytes.getBytes
                                                                (Prelude.fromIntegral len)
                                                  Data.ProtoLens.Encoding.Bytes.runEither
                                                    (case Data.Text.Encoding.decodeUtf8' value of
                                                         Prelude.Left err -> Prelude.Left
                                                                               (Prelude.show err)
                                                         Prelude.Right r -> Prelude.Right r))
                                                Data.ProtoLens.Encoding.Bytes.<?> "u"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"u") y x)
                                           mutable'stuff
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             mutable'stuff
              in
              (do mutable'stuff <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
                  loop Data.ProtoLens.defMessage mutable'stuff)
                Data.ProtoLens.Encoding.Bytes.<?> "Pong"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"status") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (((\ bs ->
                           (Data.ProtoLens.Encoding.Bytes.putVarInt
                              (Prelude.fromIntegral (Data.ByteString.length bs)))
                             Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                         Prelude.. Data.Text.Encoding.encodeUtf8)
                        _v)
                 Data.Monoid.<>
                 (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                    (\ _v ->
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                         (((\ bs ->
                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Prelude.. Data.ProtoLens.encodeMessage)
                           _v)
                    (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'stuff") _x))
                   Data.Monoid.<>
                   (let _v = Lens.Family2.view (Data.ProtoLens.Field.field @"id") _x
                      in
                      if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                        Data.Monoid.mempty else
                        (Data.ProtoLens.Encoding.Bytes.putVarInt 40) Data.Monoid.<>
                          ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                             Prelude.fromIntegral)
                            _v)
                     Data.Monoid.<>
                     (let _v
                            = Lens.Family2.view (Data.ProtoLens.Field.field @"type'") _x
                        in
                        if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                          Data.Monoid.mempty else
                          (Data.ProtoLens.Encoding.Bytes.putVarInt 50) Data.Monoid.<>
                            (((\ bs ->
                                 (Data.ProtoLens.Encoding.Bytes.putVarInt
                                    (Prelude.fromIntegral (Data.ByteString.length bs)))
                                   Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                               Prelude.. Data.Text.Encoding.encodeUtf8)
                              _v)
                       Data.Monoid.<>
                       (case
                          Lens.Family2.view (Data.ProtoLens.Field.field @"maybe'extra") _x of
                            (Prelude.Nothing) -> Data.Monoid.mempty
                            Prelude.Just (Pong'T v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          24)
                                                         Data.Monoid.<>
                                                         ((Data.ProtoLens.Encoding.Bytes.putVarInt)
                                                            Prelude.. Prelude.fromIntegral)
                                                           v
                            Prelude.Just (Pong'U v) -> (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                          34)
                                                         Data.Monoid.<>
                                                         (((\ bs ->
                                                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                                                 (Prelude.fromIntegral
                                                                    (Data.ByteString.length bs)))
                                                                Data.Monoid.<>
                                                                Data.ProtoLens.Encoding.Bytes.putBytes
                                                                  bs))
                                                            Prelude.. Data.Text.Encoding.encodeUtf8)
                                                           v)
                         Data.Monoid.<>
                         Data.ProtoLens.Encoding.Wire.buildFieldSet
                           (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Pong where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_Pong'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_Pong'status x__)
                    (Control.DeepSeq.deepseq (_Pong'stuff x__)
                       (Control.DeepSeq.deepseq (_Pong'id x__)
                          (Control.DeepSeq.deepseq (_Pong'type' x__)
                             (Control.DeepSeq.deepseq (_Pong'extra x__) (())))))))
instance Control.DeepSeq.NFData Pong'Extra where
        rnf (Pong'T x__) = Control.DeepSeq.rnf x__
        rnf (Pong'U x__) = Control.DeepSeq.rnf x__
_Pong'T :: Data.ProtoLens.Prism.Prism' Pong'Extra Data.Word.Word32
_Pong'T
  = Data.ProtoLens.Prism.prism' Pong'T
      (\ p__ ->
         case p__ of
             Pong'T p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Pong'U :: Data.ProtoLens.Prism.Prism' Pong'Extra Data.Text.Text
_Pong'U
  = Data.ProtoLens.Prism.prism' Pong'U
      (\ p__ ->
         case p__ of
             Pong'U p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
{- | Fields :

    * 'Proto.Haberdasher_Fields.dollars' @:: Lens' Price Data.Word.Word32@
    * 'Proto.Haberdasher_Fields.cents' @:: Lens' Price Data.Word.Word32@
 -}
data Price = Price{_Price'dollars :: !Data.Word.Word32,
                   _Price'cents :: !Data.Word.Word32,
                   _Price'_unknownFields :: !Data.ProtoLens.FieldSet}
               deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Price where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Price "dollars"
           (Data.Word.Word32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Price'dollars
               (\ x__ y__ -> x__{_Price'dollars = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Price "cents"
           (Data.Word.Word32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Price'cents
               (\ x__ y__ -> x__{_Price'cents = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message Price where
        messageName _ = Data.Text.pack "twirp.example.haberdasher.Price"
        fieldsByTag
          = let dollars__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "dollars"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"dollars"))
                      :: Data.ProtoLens.FieldDescriptor Price
                cents__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "cents"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"cents"))
                      :: Data.ProtoLens.FieldDescriptor Price
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, dollars__field_descriptor),
                 (Data.ProtoLens.Tag 2, cents__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Price'_unknownFields
              (\ x__ y__ -> x__{_Price'_unknownFields = y__})
        defMessage
          = Price{_Price'dollars = Data.ProtoLens.fieldDefault,
                  _Price'cents = Data.ProtoLens.fieldDefault,
                  _Price'_unknownFields = ([])}
        parseMessage
          = let loop :: Price -> Data.ProtoLens.Encoding.Bytes.Parser Price
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                8 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "dollars"
                                        loop
                                          (Lens.Family2.set (Data.ProtoLens.Field.field @"dollars")
                                             y
                                             x)
                                16 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "cents"
                                         loop
                                           (Lens.Family2.set (Data.ProtoLens.Field.field @"cents") y
                                              x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "Price"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"dollars") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         Prelude.fromIntegral)
                        _v)
                 Data.Monoid.<>
                 (let _v
                        = Lens.Family2.view (Data.ProtoLens.Field.field @"cents") _x
                    in
                    if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                      Data.Monoid.mempty else
                      (Data.ProtoLens.Encoding.Bytes.putVarInt 16) Data.Monoid.<>
                        ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                           Prelude.fromIntegral)
                          _v)
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Price where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_Price'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_Price'dollars x__)
                    (Control.DeepSeq.deepseq (_Price'cents x__) (()))))
{- | Fields :

    * 'Proto.Haberdasher_Fields.inches' @:: Lens' Size Data.Int.Int32@
 -}
data Size = Size{_Size'inches :: !Data.Int.Int32,
                 _Size'_unknownFields :: !Data.ProtoLens.FieldSet}
              deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Size where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Size "inches"
           (Data.Int.Int32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Size'inches
               (\ x__ y__ -> x__{_Size'inches = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message Size where
        messageName _ = Data.Text.pack "twirp.example.haberdasher.Size"
        fieldsByTag
          = let inches__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "inches"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Data.ProtoLens.Field.field @"inches"))
                      :: Data.ProtoLens.FieldDescriptor Size
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, inches__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Size'_unknownFields
              (\ x__ y__ -> x__{_Size'_unknownFields = y__})
        defMessage
          = Size{_Size'inches = Data.ProtoLens.fieldDefault,
                 _Size'_unknownFields = ([])}
        parseMessage
          = let loop :: Size -> Data.ProtoLens.Encoding.Bytes.Parser Size
                loop x
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 x)
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                8 -> do y <- (Prelude.fmap Prelude.fromIntegral
                                                Data.ProtoLens.Encoding.Bytes.getVarInt)
                                               Data.ProtoLens.Encoding.Bytes.<?> "inches"
                                        loop
                                          (Lens.Family2.set (Data.ProtoLens.Field.field @"inches") y
                                             x)
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
              in
              (do loop Data.ProtoLens.defMessage)
                Data.ProtoLens.Encoding.Bytes.<?> "Size"
        buildMessage
          = (\ _x ->
               (let _v
                      = Lens.Family2.view (Data.ProtoLens.Field.field @"inches") _x
                  in
                  if (_v) Prelude.== Data.ProtoLens.fieldDefault then
                    Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 8) Data.Monoid.<>
                      ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                         Prelude.fromIntegral)
                        _v)
                 Data.Monoid.<>
                 Data.ProtoLens.Encoding.Wire.buildFieldSet
                   (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Size where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_Size'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_Size'inches x__) (())))
{- | Fields :

    * 'Proto.Haberdasher_Fields.items' @:: Lens' Test [Data.Int.Int32]@
    * 'Proto.Haberdasher_Fields.vec'items' @:: Lens' Test (Data.Vector.Unboxed.Vector Data.Int.Int32)@
    * 'Proto.Haberdasher_Fields.altPrices' @:: Lens' Test [Price]@
    * 'Proto.Haberdasher_Fields.vec'altPrices' @:: Lens' Test (Data.Vector.Vector Price)@
 -}
data Test = Test{_Test'items ::
                 !(Data.Vector.Unboxed.Vector Data.Int.Int32),
                 _Test'altPrices :: !(Data.Vector.Vector Price),
                 _Test'_unknownFields :: !Data.ProtoLens.FieldSet}
              deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Test where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Data.ProtoLens.Field.HasField Test "items"
           ([Data.Int.Int32])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Test'items
               (\ x__ y__ -> x__{_Test'items = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField Test "vec'items"
           (Data.Vector.Unboxed.Vector Data.Int.Int32)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Test'items
               (\ x__ y__ -> x__{_Test'items = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Field.HasField Test "altPrices" ([Price])
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Test'altPrices
               (\ x__ y__ -> x__{_Test'altPrices = y__}))
              Prelude..
              Lens.Family2.Unchecked.lens Data.Vector.Generic.toList
                (\ _ y__ -> Data.Vector.Generic.fromList y__)
instance Data.ProtoLens.Field.HasField Test "vec'altPrices"
           (Data.Vector.Vector Price)
         where
        fieldOf _
          = (Lens.Family2.Unchecked.lens _Test'altPrices
               (\ x__ y__ -> x__{_Test'altPrices = y__}))
              Prelude.. Prelude.id
instance Data.ProtoLens.Message Test where
        messageName _ = Data.Text.pack "twirp.example.haberdasher.Test"
        fieldsByTag
          = let items__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "items"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         (Data.ProtoLens.Field.field @"items"))
                      :: Data.ProtoLens.FieldDescriptor Test
                altPrices__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "alt_prices"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Price)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Data.ProtoLens.Field.field @"altPrices"))
                      :: Data.ProtoLens.FieldDescriptor Test
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, items__field_descriptor),
                 (Data.ProtoLens.Tag 2, altPrices__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Test'_unknownFields
              (\ x__ y__ -> x__{_Test'_unknownFields = y__})
        defMessage
          = Test{_Test'items = Data.Vector.Generic.empty,
                 _Test'altPrices = Data.Vector.Generic.empty,
                 _Test'_unknownFields = ([])}
        parseMessage
          = let loop ::
                     Test ->
                       Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Vector
                         Data.ProtoLens.Encoding.Growing.RealWorld
                         Price
                         ->
                         Data.ProtoLens.Encoding.Growing.Growing Data.Vector.Unboxed.Vector
                           Data.ProtoLens.Encoding.Growing.RealWorld
                           Data.Int.Int32
                           -> Data.ProtoLens.Encoding.Bytes.Parser Test
                loop x mutable'altPrices mutable'items
                  = do end <- Data.ProtoLens.Encoding.Bytes.atEnd
                       if end then
                         do frozen'altPrices <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                  (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                     mutable'altPrices)
                            frozen'items <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                              (Data.ProtoLens.Encoding.Growing.unsafeFreeze
                                                 mutable'items)
                            let missing = [] in
                              if Prelude.null missing then Prelude.return () else
                                Prelude.fail
                                  (("Missing required fields: ") Prelude.++
                                     Prelude.show (missing :: ([Prelude.String])))
                            Prelude.return
                              (Lens.Family2.over Data.ProtoLens.unknownFields
                                 (\ !t -> Prelude.reverse t)
                                 (Lens.Family2.set (Data.ProtoLens.Field.field @"vec'altPrices")
                                    frozen'altPrices
                                    (Lens.Family2.set (Data.ProtoLens.Field.field @"vec'items")
                                       frozen'items
                                       x)))
                         else
                         do tag <- Data.ProtoLens.Encoding.Bytes.getVarInt
                            case tag of
                                8 -> do !y <- (Prelude.fmap Prelude.fromIntegral
                                                 Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                Data.ProtoLens.Encoding.Bytes.<?> "items"
                                        v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                               (Data.ProtoLens.Encoding.Growing.append mutable'items
                                                  y)
                                        loop x mutable'altPrices v
                                10 -> do y <- do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                 Data.ProtoLens.Encoding.Bytes.isolate
                                                   (Prelude.fromIntegral len)
                                                   ((let ploop qs
                                                           = do packedEnd <- Data.ProtoLens.Encoding.Bytes.atEnd
                                                                if packedEnd then Prelude.return qs
                                                                  else
                                                                  do !q <- (Prelude.fmap
                                                                              Prelude.fromIntegral
                                                                              Data.ProtoLens.Encoding.Bytes.getVarInt)
                                                                             Data.ProtoLens.Encoding.Bytes.<?>
                                                                             "items"
                                                                     qs' <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                                              (Data.ProtoLens.Encoding.Growing.append
                                                                                 qs
                                                                                 q)
                                                                     ploop qs'
                                                       in ploop)
                                                      mutable'items)
                                         loop x mutable'altPrices y
                                18 -> do !y <- (do len <- Data.ProtoLens.Encoding.Bytes.getVarInt
                                                   Data.ProtoLens.Encoding.Bytes.isolate
                                                     (Prelude.fromIntegral len)
                                                     Data.ProtoLens.parseMessage)
                                                 Data.ProtoLens.Encoding.Bytes.<?> "alt_prices"
                                         v <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                                (Data.ProtoLens.Encoding.Growing.append
                                                   mutable'altPrices
                                                   y)
                                         loop x v mutable'items
                                wire -> do !y <- Data.ProtoLens.Encoding.Wire.parseTaggedValueFromWire
                                                   wire
                                           loop
                                             (Lens.Family2.over Data.ProtoLens.unknownFields
                                                (\ !t -> (:) y t)
                                                x)
                                             mutable'altPrices
                                             mutable'items
              in
              (do mutable'altPrices <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                         Data.ProtoLens.Encoding.Growing.new
                  mutable'items <- Data.ProtoLens.Encoding.Parser.Unsafe.unsafeLiftIO
                                     Data.ProtoLens.Encoding.Growing.new
                  loop Data.ProtoLens.defMessage mutable'altPrices mutable'items)
                Data.ProtoLens.Encoding.Bytes.<?> "Test"
        buildMessage
          = (\ _x ->
               (let p = Lens.Family2.view
                          (Data.ProtoLens.Field.field @"vec'items")
                          _x
                  in
                  if Data.Vector.Generic.null p then Data.Monoid.mempty else
                    (Data.ProtoLens.Encoding.Bytes.putVarInt 10) Data.Monoid.<>
                      (\ bs ->
                         (Data.ProtoLens.Encoding.Bytes.putVarInt
                            (Prelude.fromIntegral (Data.ByteString.length bs)))
                           Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs)
                        (Data.ProtoLens.Encoding.Bytes.runBuilder
                           (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                              ((Data.ProtoLens.Encoding.Bytes.putVarInt) Prelude..
                                 Prelude.fromIntegral)
                              p)))
                 Data.Monoid.<>
                 (Data.ProtoLens.Encoding.Bytes.foldMapBuilder
                    (\ _v ->
                       (Data.ProtoLens.Encoding.Bytes.putVarInt 18) Data.Monoid.<>
                         (((\ bs ->
                              (Data.ProtoLens.Encoding.Bytes.putVarInt
                                 (Prelude.fromIntegral (Data.ByteString.length bs)))
                                Data.Monoid.<> Data.ProtoLens.Encoding.Bytes.putBytes bs))
                            Prelude.. Data.ProtoLens.encodeMessage)
                           _v)
                    (Lens.Family2.view (Data.ProtoLens.Field.field @"vec'altPrices")
                       _x))
                   Data.Monoid.<>
                   Data.ProtoLens.Encoding.Wire.buildFieldSet
                     (Lens.Family2.view Data.ProtoLens.unknownFields _x))
instance Control.DeepSeq.NFData Test where
        rnf
          = (\ x__ ->
               Control.DeepSeq.deepseq (_Test'_unknownFields x__)
                 (Control.DeepSeq.deepseq (_Test'items x__)
                    (Control.DeepSeq.deepseq (_Test'altPrices x__) (()))))
data Haberdasher = Haberdasher{}
                     deriving ()
instance Data.ProtoLens.Service.Types.Service Haberdasher where
        type ServiceName Haberdasher = "Haberdasher"
        type ServicePackage Haberdasher = "twirp.example.haberdasher"
        type ServiceMethods Haberdasher = '["getBill", "makeHat"]
instance Data.ProtoLens.Service.Types.HasMethodImpl Haberdasher
           "makeHat"
         where
        type MethodName Haberdasher "makeHat" = "MakeHat"
        type MethodInput Haberdasher "makeHat" = Size
        type MethodOutput Haberdasher "makeHat" = Hat
        type MethodStreamingType Haberdasher "makeHat" =
             'Data.ProtoLens.Service.Types.NonStreaming
instance Data.ProtoLens.Service.Types.HasMethodImpl Haberdasher
           "getBill"
         where
        type MethodName Haberdasher "getBill" = "GetBill"
        type MethodInput Haberdasher "getBill" = Hat
        type MethodOutput Haberdasher "getBill" = Bill
        type MethodStreamingType Haberdasher "getBill" =
             'Data.ProtoLens.Service.Types.NonStreaming
data Health = Health{}
                deriving ()
instance Data.ProtoLens.Service.Types.Service Health where
        type ServiceName Health = "Health"
        type ServicePackage Health = "twirp.example.haberdasher"
        type ServiceMethods Health = '["check"]
instance Data.ProtoLens.Service.Types.HasMethodImpl Health "check"
         where
        type MethodName Health "check" = "Check"
        type MethodInput Health "check" = Ping
        type MethodOutput Health "check" = Pong
        type MethodStreamingType Health "check" =
             'Data.ProtoLens.Service.Types.NonStreaming