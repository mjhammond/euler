main :: IO ()
main = do
  nums <- fmap (map read . lines) (readFile "13.txt")
  print . take 10 . show . sum $ nums
