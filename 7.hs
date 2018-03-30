ld :: [Integer] -> Integer -> Integer
ld (p:ps) n | rem n p == 0 = p
            | p^2 > n = n
            | otherwise = ld ps n

prime :: Integer -> Bool
prime n | n < 1 = error "not a positive integer"
        | n == 1 = False
        | otherwise = ld primes n == n

primes :: [Integer]
primes = 2 : filter prime [3..]

main = do
  putStrLn $ show $ primes !! 10000
