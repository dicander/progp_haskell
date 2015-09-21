import System.IO
import Control.Monad


collatz::Integer->[Integer]
collatz n
  |n == 1 = [1]
  |mod n 2 == 1 = n: (collatz (3*n+1))
  |mod n 2 == 0 = n: (collatz (div n 2))

main = do {
  line <- getLine;
  let n =( read line) :: Integer in ( do {
    mapM_ print $ collatz n;
    print $ length $ collatz n;
    }
  )
}
