module Main where
import Data.List

newline str = str ++ "\n"

main = 
  interact (newline . show . length . words) 
