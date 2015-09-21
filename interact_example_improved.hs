module Main where
import Data.List

newline::String -> String
newline str = str ++ "\n"

main =
  interact (newline . concat . sort . lines)
     
