{-# LANGUAGE JavaScriptFFI, GeneralizedNewtypeDeriving #-}
module GHCJS.Three.Euler (
    Euler(..), mkEuler
    ) where

import Data.JSString
import GHCJS.Types

import GHCJS.Three.Monad
import GHCJS.Three.HasXYZ

newtype Euler = Euler {
    getObject :: Object
} deriving (ThreeJSRef)

instance HasXYZ Euler

foreign import javascript unsafe "new window.THREE.Euler($1, $2, $3, $4)"
    thr_mkEuler :: Double -> Double -> Double -> JSString -> Three JSRef

mkEuler :: Double -> Double -> Double -> JSString -> Three Euler
mkEuler x y z o = fromJSRef <$> thr_mkEuler x y z o