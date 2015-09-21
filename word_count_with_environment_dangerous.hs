module Main where
import System.Environment (getArgs)
import System.IO

main = do {
  ih <- openFile "input.txt" ReadMode;
  input <- hGetContents ih;
  hClose(ih);
  putStrLn $ show $ length $ words input;
}
