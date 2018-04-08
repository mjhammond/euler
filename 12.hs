import Data.List

triangles :: [Integer]
triangles = scanl (+) 1 [2..]

factors :: Integer -> [Integer]
factors n = sort [ x | x <- [1..floor (sqrt (fromIntegral n))]
                        , (d,0) <- [divMod n x], i <- [x]++[d|d>x] ]
-- factors n = [x | x <- [1..n], n `mod` x == 0]

main :: IO ()
main = do
  print $ last $ head $ filter (\n -> length n > 500) $ map factors $ triangles
