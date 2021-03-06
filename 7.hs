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

-- primes = sieve [2..] where sieve (x:xs) = x : sieve [y | y <- xs, rem y x /= 0]

main :: IO ()
main = do
  print $ primes !! 10000

