module Main (main) where

import Graphics.Gloss
import Graphics.Gloss.Juicy
import System.Directory

window :: Display
window = InWindow "Hello World" (640, 480) (100, 100)

main :: IO ()
main = do
  maybeImage <- loadJuicy "image.png"
  case maybeImage of
    Nothing -> do
      putStrLn "image.png is not found"
      pwd <- getCurrentDirectory
      putStrLn $ "current directory is " ++ pwd
    Just img -> display window white (scale 0.5 0.5 img)
