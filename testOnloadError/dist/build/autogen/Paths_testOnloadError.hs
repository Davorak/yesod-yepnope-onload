module Paths_testOnloadError (
    version,
    getBinDir, getLibDir, getDataDir, getLibexecDir,
    getDataFileName
  ) where

import Data.Version (Version(..))
import System.Environment (getEnv)

version :: Version
version = Version {versionBranch = [0,0,0], versionTags = []}

bindir, libdir, datadir, libexecdir :: FilePath

bindir     = "/Users/pjw/Library/Haskell/ghc-7.0.3/lib/testOnloadError-0.0.0/bin"
libdir     = "/Users/pjw/Library/Haskell/ghc-7.0.3/lib/testOnloadError-0.0.0/lib"
datadir    = "/Users/pjw/Library/Haskell/ghc-7.0.3/lib/testOnloadError-0.0.0/share"
libexecdir = "/Users/pjw/Library/Haskell/ghc-7.0.3/lib/testOnloadError-0.0.0/libexec"

getBinDir, getLibDir, getDataDir, getLibexecDir :: IO FilePath
getBinDir = catch (getEnv "testOnloadError_bindir") (\_ -> return bindir)
getLibDir = catch (getEnv "testOnloadError_libdir") (\_ -> return libdir)
getDataDir = catch (getEnv "testOnloadError_datadir") (\_ -> return datadir)
getLibexecDir = catch (getEnv "testOnloadError_libexecdir") (\_ -> return libexecdir)

getDataFileName :: FilePath -> IO FilePath
getDataFileName name = do
  dir <- getDataDir
  return (dir ++ "/" ++ name)
