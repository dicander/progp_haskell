module Main where
import Data.List (sortBy, sort, group)
import Data.Char (toLower)

countElems = map (\x ->
 (head x, length x))

sortBySnd = sortBy (\x y ->
 snd y `compare` snd x)

lower = map toLower

rankWords = sortBySnd . countElems .
 group . sort . words . lower

formatOutput = unlines . map
 (\(str, i) -> str ++ "\t" ++ show i)

main = interact (formatOutput .
 (take 20) . rankWords)
