module Main where
main =do {
  input <- getContents;
  ws <- return (length
  (words input));
  putStrLn (show ws);
}
