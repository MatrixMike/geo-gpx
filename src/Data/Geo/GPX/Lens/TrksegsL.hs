module Data.Geo.GPX.Lens.TrksegsL where

import Data.Geo.GPX.Trkseg
import Data.Lens.Common

class TrksegsL a where
  trksegsL :: Lens a [Trkseg]

