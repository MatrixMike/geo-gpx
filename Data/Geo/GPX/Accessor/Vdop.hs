module Data.Geo.GPX.Accessor.Vdop where

class Vdop a where
  vdop :: a -> Maybe Double