module Data.Geo.GPX.Example.Interact where

import Data.Geo.GPX

-- Takes a GPX file and applies the given list of functions and writes a new GPX file.
-- The functions are:
-- 1) set the copyright element in the metadata with an author, year and license.
-- 2) add a waypoint; see the home value below
-- 3) set the creator attribute of the gpx element.
interaction :: FilePath -> FilePath -> IO ()
interaction = flip interactsGpx [
                -- set the copyright in the metadata
                setCopyright' (copyrightType "Fred" (Just "2009") (Just "BSD3")),
                -- add a waypoint (home)
                flip usingWpts (home:),
                -- set the creator
                setCreator "Me!"]

home :: WptType
home = wptType (latitudeType (-27.69301))
               (longitudeType 152.718)
               (Just 326.7)
               Nothing
               Nothing
               Nothing
               (Just "My house")
               (Just "I live here")
               Nothing
               Nothing
               []
               Nothing
               Nothing
               Nothing
               Nothing
               Nothing
               Nothing
               Nothing
               Nothing
               Nothing
               Nothing