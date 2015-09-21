import System.IO

main = do {
  ih <- openFile "alice_in_wonderland.txt" ReadMode;
  input <- hGetContents ih;
  putStrLn $ show $ length $ words input;
  hClose(ih);
}
