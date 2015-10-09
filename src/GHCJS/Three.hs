module GHCJS.Three
    (
     module GHCJS.Three.Monad,
     module GHCJS.Three.Vector,
     module GHCJS.Three.Euler,
     module GHCJS.Three.Camera,
     module GHCJS.Three.Object3D,
     module GHCJS.Three.WebGLRenderer,
     module GHCJS.Three.Scene,
     module GHCJS.Three.Geometry,
     module GHCJS.Three.Material,
     module GHCJS.Three.Mesh,
     module GHCJS.Three.Color,
     module GHCJS.Three.Light,
     module GHCJS.Three.Raycaster,
     module GHCJS.Three.HasChildren,
     module GHCJS.Three.Disposable,
     module GHCJS.Three.Visible,
     module GHCJS.Three.HasXYZ,
     runThree
    )
    where

import GHCJS.Three.Monad
import GHCJS.Three.Vector
import GHCJS.Three.Euler
import GHCJS.Three.Camera
import GHCJS.Three.Object3D
import GHCJS.Three.WebGLRenderer
import GHCJS.Three.Scene
import GHCJS.Three.Geometry
import GHCJS.Three.Material
import GHCJS.Three.Mesh
import GHCJS.Three.Color
import GHCJS.Three.Light
import GHCJS.Three.Raycaster
import GHCJS.Three.HasChildren
import GHCJS.Three.Disposable
import GHCJS.Three.Visible
import GHCJS.Three.HasXYZ

import JavaScript.Web.AnimationFrame
import GHCJS.Foreign.Callback (OnBlocked(..))

import Control.Monad.IO.Class

runThree :: MonadIO m => Three () -> m ()
runThree t = liftIO $ inAnimationFrame ContinueAsync t >> return ()