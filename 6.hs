main = do
  putStrLn $ show $ (sum [1..100] ^ 2) - (sum $ map (\x -> x * x) [1..100])
