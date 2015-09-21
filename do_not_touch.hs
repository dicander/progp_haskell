visa :: String -> a -> a
visa s x =
 unsafePerformIO (putStrLns s >> return x)
