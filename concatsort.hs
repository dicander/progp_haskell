module Main where
import Data.List
main = 
  interact (concat . sort . lines)
