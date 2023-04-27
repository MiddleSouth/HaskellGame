module Main (main) where

import Graphics.Gloss
import Graphics.Gloss.Juicy

window :: Display
window = InWindow "Hello World" (640, 480) (100, 100)

main :: IO ()
main = do
  Just img <- loadJuicy "image.png"
  display window white (scale 0.5 0.5 img)
