module Main where
import System.IO
main = do { 
  ih <- openFile
  "alice_in_wonderland.txt" ReadMode;
  input <- hGetContents ih;
  ws <- return (length
  (words input));
  putStrLn(show ws);
  hClose(ih)
}
