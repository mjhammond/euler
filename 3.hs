factorise :: Integer -> Integer -> [Integer]
factorise _ 1 = []
factorise x n
  | x * x > n = [n]
  | n `mod` x == 0 = x : factorise x (n `div` x)
  | otherwise = factorise (x + 1) n

primeFactors :: Integer -> [Integer]
primeFactors = factorise 2

main = do
  putStrLn $ show $ maximum $ primeFactors 600851475143
