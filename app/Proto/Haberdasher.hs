{- This file was auto-generated from haberdasher.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
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
import qualified Data.ProtoLens.Runtime.Lens.Labels.Prism
       as Lens.Labels.Prism
import qualified Data.ProtoLens.Runtime.Prelude as Prelude
import qualified Data.ProtoLens.Runtime.Data.Int as Data.Int
import qualified Data.ProtoLens.Runtime.Data.Word as Data.Word
import qualified Data.ProtoLens.Runtime.Data.ProtoLens
       as Data.ProtoLens
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
import qualified Data.ProtoLens.Runtime.Lens.Labels as Lens.Labels
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
instance Lens.Labels.HasLens' Bill "price" (Price) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Bill'price
                 (\ x__ y__ -> x__{_Bill'price = y__}))
              (Data.ProtoLens.maybeLens Data.ProtoLens.defMessage)
instance Lens.Labels.HasLens' Bill "maybe'price"
           (Prelude.Maybe Price)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Bill'price
                 (\ x__ y__ -> x__{_Bill'price = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Bill "status" (Bill'BillingStatus)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Bill'status
                 (\ x__ y__ -> x__{_Bill'status = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Bill "maybe'extra"
           (Prelude.Maybe Bill'Extra)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Bill'extra
                 (\ x__ y__ -> x__{_Bill'extra = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Bill "maybe'vatInfo"
           (Prelude.Maybe Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Bill'extra
                 (\ x__ y__ -> x__{_Bill'extra = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Bill'VatInfo x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Bill'VatInfo y__))
instance Lens.Labels.HasLens' Bill "vatInfo" (Data.Text.Text) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Bill'extra
                 (\ x__ y__ -> x__{_Bill'extra = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Bill'VatInfo x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Bill'VatInfo y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Lens.Labels.HasLens' Bill "maybe'zipCode"
           (Prelude.Maybe Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Bill'extra
                 (\ x__ y__ -> x__{_Bill'extra = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Bill'ZipCode x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Bill'ZipCode y__))
instance Lens.Labels.HasLens' Bill "zipCode" (Data.Text.Text) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Bill'extra
                 (\ x__ y__ -> x__{_Bill'extra = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Bill'ZipCode x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Bill'ZipCode y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message Bill where
        messageName _ = Data.Text.pack "twirp.example.haberdasher.Bill"
        fieldsByTag
          = let price__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "price"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Price)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'price")))
                      :: Data.ProtoLens.FieldDescriptor Bill
                status__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "status"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.EnumField ::
                         Data.ProtoLens.FieldTypeDescriptor Bill'BillingStatus)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "status")))
                      :: Data.ProtoLens.FieldDescriptor Bill
                vatInfo__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "vat_info"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'vatInfo")))
                      :: Data.ProtoLens.FieldDescriptor Bill
                zipCode__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "zip_code"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'zipCode")))
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
instance Control.DeepSeq.NFData Bill where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_Bill'_unknownFields x__)
                (Control.DeepSeq.deepseq (_Bill'price x__)
                   (Control.DeepSeq.deepseq (_Bill'status x__)
                      (Control.DeepSeq.deepseq (_Bill'extra x__) (()))))
instance Control.DeepSeq.NFData Bill'Extra where
        rnf (Bill'VatInfo x__) = Control.DeepSeq.rnf x__
        rnf (Bill'ZipCode x__) = Control.DeepSeq.rnf x__
_Bill'VatInfo :: Lens.Labels.Prism.Prism' Bill'Extra Data.Text.Text
_Bill'VatInfo
  = Lens.Labels.Prism.prism' Bill'VatInfo
      (\ p__ ->
         case p__ of
             Bill'VatInfo p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Bill'ZipCode :: Lens.Labels.Prism.Prism' Bill'Extra Data.Text.Text
_Bill'ZipCode
  = Lens.Labels.Prism.prism' Bill'ZipCode
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
          | (Prelude.==) k "UN_PAID" = Prelude.Just Bill'UN_PAID
          | (Prelude.==) k "PAID" = Prelude.Just Bill'PAID
        readEnum k
          = (Prelude.>>=) (Text.Read.readMaybe k) Data.ProtoLens.maybeToEnum
instance Prelude.Bounded Bill'BillingStatus where
        minBound = Bill'UN_PAID
        maxBound = Bill'PAID
instance Prelude.Enum Bill'BillingStatus where
        toEnum k__
          = Prelude.maybe
              (Prelude.error
                 ((Prelude.++) "toEnum: unknown value for enum BillingStatus: "
                    (Prelude.show k__)))
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
instance Control.DeepSeq.NFData EmptyMessage where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_EmptyMessage'_unknownFields x__) (())
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
instance Lens.Labels.HasLens' FieldTestMessage "testBytes"
           (Data.ByteString.ByteString)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _FieldTestMessage'testBytes
                 (\ x__ y__ -> x__{_FieldTestMessage'testBytes = y__}))
              Prelude.id
instance Data.ProtoLens.Message FieldTestMessage where
        messageName _
          = Data.Text.pack "twirp.example.haberdasher.FieldTestMessage"
        fieldsByTag
          = let testBytes__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "test_bytes"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.BytesField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.ByteString.ByteString)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "testBytes")))
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
instance Control.DeepSeq.NFData FieldTestMessage where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_FieldTestMessage'_unknownFields x__)
                (Control.DeepSeq.deepseq (_FieldTestMessage'testBytes x__) (()))
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
instance Lens.Labels.HasLens' Hat "inches" (Data.Int.Int32) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Hat'inches
                 (\ x__ y__ -> x__{_Hat'inches = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Hat "color" (Data.Text.Text) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Hat'color
                 (\ x__ y__ -> x__{_Hat'color = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Hat "name" (Data.Text.Text) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Hat'name
                 (\ x__ y__ -> x__{_Hat'name = y__}))
              Prelude.id
instance Data.ProtoLens.Message Hat where
        messageName _ = Data.Text.pack "twirp.example.haberdasher.Hat"
        fieldsByTag
          = let inches__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "inches"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "inches")))
                      :: Data.ProtoLens.FieldDescriptor Hat
                color__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "color"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "color")))
                      :: Data.ProtoLens.FieldDescriptor Hat
                name__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "name"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")))
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
instance Control.DeepSeq.NFData Hat where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_Hat'_unknownFields x__)
                (Control.DeepSeq.deepseq (_Hat'inches x__)
                   (Control.DeepSeq.deepseq (_Hat'color x__)
                      (Control.DeepSeq.deepseq (_Hat'name x__) (()))))
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
instance Lens.Labels.HasLens' Ping "service" (Data.Text.Text) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Ping'service
                 (\ x__ y__ -> x__{_Ping'service = y__}))
              Prelude.id
instance Data.ProtoLens.Message Ping where
        messageName _ = Data.Text.pack "twirp.example.haberdasher.Ping"
        fieldsByTag
          = let service__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "service"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "service")))
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
instance Control.DeepSeq.NFData Ping where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_Ping'_unknownFields x__)
                (Control.DeepSeq.deepseq (_Ping'service x__) (()))
{- | Fields :

    * 'Proto.Haberdasher_Fields.status' @:: Lens' Pong Data.Text.Text@
    * 'Proto.Haberdasher_Fields.stuff' @:: Lens' Pong [Test]@
    * 'Proto.Haberdasher_Fields.id' @:: Lens' Pong Data.Int.Int32@
    * 'Proto.Haberdasher_Fields.type'' @:: Lens' Pong Data.Text.Text@
    * 'Proto.Haberdasher_Fields.maybe'extra' @:: Lens' Pong (Prelude.Maybe Pong'Extra)@
    * 'Proto.Haberdasher_Fields.maybe't' @:: Lens' Pong (Prelude.Maybe Data.Word.Word32)@
    * 'Proto.Haberdasher_Fields.t' @:: Lens' Pong Data.Word.Word32@
    * 'Proto.Haberdasher_Fields.maybe'u' @:: Lens' Pong (Prelude.Maybe Data.Text.Text)@
    * 'Proto.Haberdasher_Fields.u' @:: Lens' Pong Data.Text.Text@
 -}
data Pong = Pong{_Pong'status :: !Data.Text.Text,
                 _Pong'stuff :: ![Test], _Pong'id :: !Data.Int.Int32,
                 _Pong'type' :: !Data.Text.Text,
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
instance Lens.Labels.HasLens' Pong "status" (Data.Text.Text) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Pong'status
                 (\ x__ y__ -> x__{_Pong'status = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Pong "stuff" ([Test]) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Pong'stuff
                 (\ x__ y__ -> x__{_Pong'stuff = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Pong "id" (Data.Int.Int32) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Pong'id
                 (\ x__ y__ -> x__{_Pong'id = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Pong "type'" (Data.Text.Text) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Pong'type'
                 (\ x__ y__ -> x__{_Pong'type' = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Pong "maybe'extra"
           (Prelude.Maybe Pong'Extra)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Pong'extra
                 (\ x__ y__ -> x__{_Pong'extra = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Pong "maybe't"
           (Prelude.Maybe Data.Word.Word32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Pong'extra
                 (\ x__ y__ -> x__{_Pong'extra = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Pong'T x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Pong'T y__))
instance Lens.Labels.HasLens' Pong "t" (Data.Word.Word32) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Pong'extra
                 (\ x__ y__ -> x__{_Pong'extra = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Pong'T x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Pong'T y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Lens.Labels.HasLens' Pong "maybe'u"
           (Prelude.Maybe Data.Text.Text)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Pong'extra
                 (\ x__ y__ -> x__{_Pong'extra = y__}))
              (Lens.Family2.Unchecked.lens
                 (\ x__ ->
                    case x__ of
                        Prelude.Just (Pong'U x__val) -> Prelude.Just x__val
                        _otherwise -> Prelude.Nothing)
                 (\ _ y__ -> Prelude.fmap Pong'U y__))
instance Lens.Labels.HasLens' Pong "u" (Data.Text.Text) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Pong'extra
                 (\ x__ y__ -> x__{_Pong'extra = y__}))
              ((Prelude..)
                 (Lens.Family2.Unchecked.lens
                    (\ x__ ->
                       case x__ of
                           Prelude.Just (Pong'U x__val) -> Prelude.Just x__val
                           _otherwise -> Prelude.Nothing)
                    (\ _ y__ -> Prelude.fmap Pong'U y__))
                 (Data.ProtoLens.maybeLens Data.ProtoLens.fieldDefault))
instance Data.ProtoLens.Message Pong where
        messageName _ = Data.Text.pack "twirp.example.haberdasher.Pong"
        fieldsByTag
          = let status__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "status"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "status")))
                      :: Data.ProtoLens.FieldDescriptor Pong
                stuff__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "stuff"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Test)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "stuff")))
                      :: Data.ProtoLens.FieldDescriptor Pong
                id__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "id"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")))
                      :: Data.ProtoLens.FieldDescriptor Pong
                type'__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "type"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "type'")))
                      :: Data.ProtoLens.FieldDescriptor Pong
                t__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "t"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe't")))
                      :: Data.ProtoLens.FieldDescriptor Pong
                u__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "u"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.StringField ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Text.Text)
                      (Data.ProtoLens.OptionalField
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'u")))
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
                 _Pong'stuff = [], _Pong'id = Data.ProtoLens.fieldDefault,
                 _Pong'type' = Data.ProtoLens.fieldDefault,
                 _Pong'extra = Prelude.Nothing, _Pong'_unknownFields = ([])}
instance Control.DeepSeq.NFData Pong where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_Pong'_unknownFields x__)
                (Control.DeepSeq.deepseq (_Pong'status x__)
                   (Control.DeepSeq.deepseq (_Pong'stuff x__)
                      (Control.DeepSeq.deepseq (_Pong'id x__)
                         (Control.DeepSeq.deepseq (_Pong'type' x__)
                            (Control.DeepSeq.deepseq (_Pong'extra x__) (()))))))
instance Control.DeepSeq.NFData Pong'Extra where
        rnf (Pong'T x__) = Control.DeepSeq.rnf x__
        rnf (Pong'U x__) = Control.DeepSeq.rnf x__
_Pong'T :: Lens.Labels.Prism.Prism' Pong'Extra Data.Word.Word32
_Pong'T
  = Lens.Labels.Prism.prism' Pong'T
      (\ p__ ->
         case p__ of
             Pong'T p__val -> Prelude.Just p__val
             _otherwise -> Prelude.Nothing)
_Pong'U :: Lens.Labels.Prism.Prism' Pong'Extra Data.Text.Text
_Pong'U
  = Lens.Labels.Prism.prism' Pong'U
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
instance Lens.Labels.HasLens' Price "dollars" (Data.Word.Word32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Price'dollars
                 (\ x__ y__ -> x__{_Price'dollars = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Price "cents" (Data.Word.Word32)
         where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Price'cents
                 (\ x__ y__ -> x__{_Price'cents = y__}))
              Prelude.id
instance Data.ProtoLens.Message Price where
        messageName _ = Data.Text.pack "twirp.example.haberdasher.Price"
        fieldsByTag
          = let dollars__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "dollars"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "dollars")))
                      :: Data.ProtoLens.FieldDescriptor Price
                cents__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "cents"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.UInt32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Word.Word32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "cents")))
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
instance Control.DeepSeq.NFData Price where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_Price'_unknownFields x__)
                (Control.DeepSeq.deepseq (_Price'dollars x__)
                   (Control.DeepSeq.deepseq (_Price'cents x__) (())))
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
instance Lens.Labels.HasLens' Size "inches" (Data.Int.Int32) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Size'inches
                 (\ x__ y__ -> x__{_Size'inches = y__}))
              Prelude.id
instance Data.ProtoLens.Message Size where
        messageName _ = Data.Text.pack "twirp.example.haberdasher.Size"
        fieldsByTag
          = let inches__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "inches"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.PlainField Data.ProtoLens.Optional
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "inches")))
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
instance Control.DeepSeq.NFData Size where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_Size'_unknownFields x__)
                (Control.DeepSeq.deepseq (_Size'inches x__) (()))
{- | Fields :

    * 'Proto.Haberdasher_Fields.items' @:: Lens' Test [Data.Int.Int32]@
    * 'Proto.Haberdasher_Fields.altPrices' @:: Lens' Test [Price]@
 -}
data Test = Test{_Test'items :: ![Data.Int.Int32],
                 _Test'altPrices :: ![Price],
                 _Test'_unknownFields :: !Data.ProtoLens.FieldSet}
              deriving (Prelude.Eq, Prelude.Ord)
instance Prelude.Show Test where
        showsPrec _ __x __s
          = Prelude.showChar '{'
              (Prelude.showString (Data.ProtoLens.showMessageShort __x)
                 (Prelude.showChar '}' __s))
instance Lens.Labels.HasLens' Test "items" ([Data.Int.Int32]) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Test'items
                 (\ x__ y__ -> x__{_Test'items = y__}))
              Prelude.id
instance Lens.Labels.HasLens' Test "altPrices" ([Price]) where
        lensOf' _
          = (Prelude..)
              (Lens.Family2.Unchecked.lens _Test'altPrices
                 (\ x__ y__ -> x__{_Test'altPrices = y__}))
              Prelude.id
instance Data.ProtoLens.Message Test where
        messageName _ = Data.Text.pack "twirp.example.haberdasher.Test"
        fieldsByTag
          = let items__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "items"
                      (Data.ProtoLens.ScalarField Data.ProtoLens.Int32Field ::
                         Data.ProtoLens.FieldTypeDescriptor Data.Int.Int32)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Packed
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "items")))
                      :: Data.ProtoLens.FieldDescriptor Test
                altPrices__field_descriptor
                  = Data.ProtoLens.FieldDescriptor "alt_prices"
                      (Data.ProtoLens.MessageField Data.ProtoLens.MessageType ::
                         Data.ProtoLens.FieldTypeDescriptor Price)
                      (Data.ProtoLens.RepeatedField Data.ProtoLens.Unpacked
                         (Lens.Labels.lensOf'
                            ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "altPrices")))
                      :: Data.ProtoLens.FieldDescriptor Test
              in
              Data.Map.fromList
                [(Data.ProtoLens.Tag 1, items__field_descriptor),
                 (Data.ProtoLens.Tag 2, altPrices__field_descriptor)]
        unknownFields
          = Lens.Family2.Unchecked.lens _Test'_unknownFields
              (\ x__ y__ -> x__{_Test'_unknownFields = y__})
        defMessage
          = Test{_Test'items = [], _Test'altPrices = [],
                 _Test'_unknownFields = ([])}
instance Control.DeepSeq.NFData Test where
        rnf
          = \ x__ ->
              Control.DeepSeq.deepseq (_Test'_unknownFields x__)
                (Control.DeepSeq.deepseq (_Test'items x__)
                   (Control.DeepSeq.deepseq (_Test'altPrices x__) (())))
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