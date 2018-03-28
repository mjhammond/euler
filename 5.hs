divides :: Integer -> Integer -> Bool
divides x y = x `mod` y == 0

divisible :: [Integer] -> Integer -> Bool
divisible xs y = all (== True) (map (divides y) xs)

main = do
  putStrLn $ show $ (length $ takeWhile (== False) $ map (divisible [1..20]) [1..]) + 1
