module Data.Geo.GPX.Lens.TrkptsL where

import Data.Geo.GPX.Wpt
import Data.Lens.Common

class TrkptsL a where
  trkptsL :: Lens a [Wpt]

