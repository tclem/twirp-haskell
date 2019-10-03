{- This file was auto-generated from haberdasher.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds,
  BangPatterns, TypeApplications #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Haberdasher_Fields where
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

altPrices ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "altPrices" a) =>
            Lens.Family2.LensLike' f s a
altPrices = Data.ProtoLens.Field.field @"altPrices"
cents ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "cents" a) =>
        Lens.Family2.LensLike' f s a
cents = Data.ProtoLens.Field.field @"cents"
color ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "color" a) =>
        Lens.Family2.LensLike' f s a
color = Data.ProtoLens.Field.field @"color"
dollars ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "dollars" a) =>
          Lens.Family2.LensLike' f s a
dollars = Data.ProtoLens.Field.field @"dollars"
id ::
   forall f s a .
     (Prelude.Functor f, Data.ProtoLens.Field.HasField s "id" a) =>
     Lens.Family2.LensLike' f s a
id = Data.ProtoLens.Field.field @"id"
inches ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "inches" a) =>
         Lens.Family2.LensLike' f s a
inches = Data.ProtoLens.Field.field @"inches"
items ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "items" a) =>
        Lens.Family2.LensLike' f s a
items = Data.ProtoLens.Field.field @"items"
maybe'extra ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "maybe'extra" a) =>
              Lens.Family2.LensLike' f s a
maybe'extra = Data.ProtoLens.Field.field @"maybe'extra"
maybe'price ::
            forall f s a .
              (Prelude.Functor f,
               Data.ProtoLens.Field.HasField s "maybe'price" a) =>
              Lens.Family2.LensLike' f s a
maybe'price = Data.ProtoLens.Field.field @"maybe'price"
maybe't ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "maybe't" a) =>
          Lens.Family2.LensLike' f s a
maybe't = Data.ProtoLens.Field.field @"maybe't"
maybe'u ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "maybe'u" a) =>
          Lens.Family2.LensLike' f s a
maybe'u = Data.ProtoLens.Field.field @"maybe'u"
maybe'vatInfo ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "maybe'vatInfo" a) =>
                Lens.Family2.LensLike' f s a
maybe'vatInfo = Data.ProtoLens.Field.field @"maybe'vatInfo"
maybe'zipCode ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "maybe'zipCode" a) =>
                Lens.Family2.LensLike' f s a
maybe'zipCode = Data.ProtoLens.Field.field @"maybe'zipCode"
name ::
     forall f s a .
       (Prelude.Functor f, Data.ProtoLens.Field.HasField s "name" a) =>
       Lens.Family2.LensLike' f s a
name = Data.ProtoLens.Field.field @"name"
price ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "price" a) =>
        Lens.Family2.LensLike' f s a
price = Data.ProtoLens.Field.field @"price"
service ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "service" a) =>
          Lens.Family2.LensLike' f s a
service = Data.ProtoLens.Field.field @"service"
status ::
       forall f s a .
         (Prelude.Functor f, Data.ProtoLens.Field.HasField s "status" a) =>
         Lens.Family2.LensLike' f s a
status = Data.ProtoLens.Field.field @"status"
stuff ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "stuff" a) =>
        Lens.Family2.LensLike' f s a
stuff = Data.ProtoLens.Field.field @"stuff"
t ::
  forall f s a .
    (Prelude.Functor f, Data.ProtoLens.Field.HasField s "t" a) =>
    Lens.Family2.LensLike' f s a
t = Data.ProtoLens.Field.field @"t"
testBytes ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "testBytes" a) =>
            Lens.Family2.LensLike' f s a
testBytes = Data.ProtoLens.Field.field @"testBytes"
type' ::
      forall f s a .
        (Prelude.Functor f, Data.ProtoLens.Field.HasField s "type'" a) =>
        Lens.Family2.LensLike' f s a
type' = Data.ProtoLens.Field.field @"type'"
u ::
  forall f s a .
    (Prelude.Functor f, Data.ProtoLens.Field.HasField s "u" a) =>
    Lens.Family2.LensLike' f s a
u = Data.ProtoLens.Field.field @"u"
vatInfo ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "vatInfo" a) =>
          Lens.Family2.LensLike' f s a
vatInfo = Data.ProtoLens.Field.field @"vatInfo"
vec'altPrices ::
              forall f s a .
                (Prelude.Functor f,
                 Data.ProtoLens.Field.HasField s "vec'altPrices" a) =>
                Lens.Family2.LensLike' f s a
vec'altPrices = Data.ProtoLens.Field.field @"vec'altPrices"
vec'items ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "vec'items" a) =>
            Lens.Family2.LensLike' f s a
vec'items = Data.ProtoLens.Field.field @"vec'items"
vec'stuff ::
          forall f s a .
            (Prelude.Functor f,
             Data.ProtoLens.Field.HasField s "vec'stuff" a) =>
            Lens.Family2.LensLike' f s a
vec'stuff = Data.ProtoLens.Field.field @"vec'stuff"
zipCode ::
        forall f s a .
          (Prelude.Functor f, Data.ProtoLens.Field.HasField s "zipCode" a) =>
          Lens.Family2.LensLike' f s a
zipCode = Data.ProtoLens.Field.field @"zipCode"