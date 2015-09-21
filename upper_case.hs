module Main where
import Data.Char
main = do {
  str <- getContents;
  putStrLn (map toUpper str);
}
