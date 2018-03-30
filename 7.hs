divides :: Integer -> Integer -> Bool
divides d n = rem n d == 0

ld :: Integer -> Integer -> Integer
ld k n | divides k n = k
        | k^2 > n = n
        | otherwise = ld (k+1) n

prime :: Integer -> Bool
prime n | n < 1 = error "not a positive integer"
        | n == 1 = False
        | otherwise = ld 2 n == n

primes = filter prime [2..]

main = do
  putStrLn $ show $ primes !! 10000
