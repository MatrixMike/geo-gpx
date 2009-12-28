module Geo.GPX.DgpsStationType where

import Data.Ix
import Text.XML.HXT.Arrow

newtype DgpsStationType = DgpsStationType Int
  deriving Eq

dgpsStationType :: Int -> Maybe DgpsStationType
dgpsStationType n = if inRange (0, 1023) n then Just (DgpsStationType n) else Nothing

instance Show DgpsStationType where
  show (DgpsStationType n) = show n

instance XmlPickler DgpsStationType where
  xpickle = xpWrapMaybe (dgpsStationType, \(DgpsStationType n) -> n) xpickle