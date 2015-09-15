import Data.Char
import Numeric
class Incrementable a where
    inc :: a -> a 
    inc2 :: a -> a 
    inc2 x = inc (inc x)
instance Incrementable Integer where
    inc x = x + 1
instance Incrementable Char where 
    inc c = chr ((ord c) + 1)
    inc2 c = chr ((ord c) - 32) 


data Color = RGB Double Double Double
    deriving (Show, Eq)
-- Getters /accessors
red (RGB r g b) = r
green (RGB r g b) = g
blue (RGB r g b) = b
brightness :: Color -> Double
brightness (RGB r g b) =
    sqrt((r^2+g^2+b^2) / 3) 
black = RGB 0 0 0
white = RGB 256 256 256

makeColorRGB r g b = RGB r g b
