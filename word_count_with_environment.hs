module Main where
import System.Environment (getArgs)
import System.IO
main = do { 
  args <- getArgs;
  ih <- openFile (head args)
  ReadMode;
  input <- hGetContents ih;
  putStrLn $show $ length $ words input;
  hClose(ih);
}
