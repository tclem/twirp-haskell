{- This file was auto-generated from haberdasher.proto by the proto-lens-protoc program. -}
{-# LANGUAGE ScopedTypeVariables, DataKinds, TypeFamilies,
  UndecidableInstances, GeneralizedNewtypeDeriving,
  MultiParamTypeClasses, FlexibleContexts, FlexibleInstances,
  PatternSynonyms, MagicHash, NoImplicitPrelude, DataKinds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports#-}
{-# OPTIONS_GHC -fno-warn-duplicate-exports#-}
module Proto.Haberdasher_Fields where
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

altPrices ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "altPrices" a) =>
            Lens.Family2.LensLike' f s a
altPrices
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "altPrices")
cents ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "cents" a) =>
        Lens.Family2.LensLike' f s a
cents
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "cents")
color ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "color" a) =>
        Lens.Family2.LensLike' f s a
color
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "color")
dollars ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "dollars" a) =>
          Lens.Family2.LensLike' f s a
dollars
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "dollars")
id ::
   forall f s a .
     (Prelude.Functor f, Lens.Labels.HasLens' s "id" a) =>
     Lens.Family2.LensLike' f s a
id
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "id")
inches ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "inches" a) =>
         Lens.Family2.LensLike' f s a
inches
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "inches")
items ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "items" a) =>
        Lens.Family2.LensLike' f s a
items
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "items")
maybe'extra ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'extra" a) =>
              Lens.Family2.LensLike' f s a
maybe'extra
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'extra")
maybe'price ::
            forall f s a .
              (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'price" a) =>
              Lens.Family2.LensLike' f s a
maybe'price
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'price")
maybe't ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "maybe't" a) =>
          Lens.Family2.LensLike' f s a
maybe't
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe't")
maybe'u ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'u" a) =>
          Lens.Family2.LensLike' f s a
maybe'u
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'u")
maybe'vatInfo ::
              forall f s a .
                (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'vatInfo" a) =>
                Lens.Family2.LensLike' f s a
maybe'vatInfo
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'vatInfo")
maybe'zipCode ::
              forall f s a .
                (Prelude.Functor f, Lens.Labels.HasLens' s "maybe'zipCode" a) =>
                Lens.Family2.LensLike' f s a
maybe'zipCode
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "maybe'zipCode")
name ::
     forall f s a .
       (Prelude.Functor f, Lens.Labels.HasLens' s "name" a) =>
       Lens.Family2.LensLike' f s a
name
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "name")
price ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "price" a) =>
        Lens.Family2.LensLike' f s a
price
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "price")
service ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "service" a) =>
          Lens.Family2.LensLike' f s a
service
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "service")
status ::
       forall f s a .
         (Prelude.Functor f, Lens.Labels.HasLens' s "status" a) =>
         Lens.Family2.LensLike' f s a
status
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "status")
stuff ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "stuff" a) =>
        Lens.Family2.LensLike' f s a
stuff
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "stuff")
t ::
  forall f s a . (Prelude.Functor f, Lens.Labels.HasLens' s "t" a) =>
    Lens.Family2.LensLike' f s a
t = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "t")
testBytes ::
          forall f s a .
            (Prelude.Functor f, Lens.Labels.HasLens' s "testBytes" a) =>
            Lens.Family2.LensLike' f s a
testBytes
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "testBytes")
type' ::
      forall f s a .
        (Prelude.Functor f, Lens.Labels.HasLens' s "type'" a) =>
        Lens.Family2.LensLike' f s a
type'
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "type'")
u ::
  forall f s a . (Prelude.Functor f, Lens.Labels.HasLens' s "u" a) =>
    Lens.Family2.LensLike' f s a
u = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "u")
vatInfo ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "vatInfo" a) =>
          Lens.Family2.LensLike' f s a
vatInfo
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "vatInfo")
zipCode ::
        forall f s a .
          (Prelude.Functor f, Lens.Labels.HasLens' s "zipCode" a) =>
          Lens.Family2.LensLike' f s a
zipCode
  = Lens.Labels.lensOf'
      ((Lens.Labels.proxy#) :: (Lens.Labels.Proxy#) "zipCode")