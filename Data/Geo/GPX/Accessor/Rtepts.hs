module Data.Geo.GPX.Accessor.Rtepts where

import Data.Geo.GPX.WptType
import Data.Geo.GPX.Accessor.Accessor

class Rtepts a where
  rtepts :: a -> [WptType]
  setRtepts :: [WptType] -> a -> a

  setRtepts' :: WptType -> a -> a
  setRtepts' = setRtepts . return

  usingRtepts :: ([WptType] -> [WptType]) -> a -> a
  usingRtepts = rtepts `using` setRtepts

  usingRtepts' :: (WptType -> WptType) -> a -> a
  usingRtepts' = usingRtepts . fmap
