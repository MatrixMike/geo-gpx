module Data.Geo.GPX.Accessor.Year where

class Year a where
  year :: a -> Maybe String
