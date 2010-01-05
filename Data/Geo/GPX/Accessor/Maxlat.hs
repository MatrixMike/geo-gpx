module Data.Geo.GPX.Accessor.Maxlat where

import Data.Geo.GPX.LatitudeType
import Data.Geo.GPX.Accessor.Accessor

class Maxlat a where
  maxlat :: a -> LatitudeType
  setMaxlat :: LatitudeType -> a -> a

  usingMaxlat :: (LatitudeType -> LatitudeType) -> a -> a
  usingMaxlat = maxlat `using` setMaxlat
