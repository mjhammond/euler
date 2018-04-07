triplets :: (Floating a, Eq a, Enum a) => a -> [[a]]
triplets n = [[a, b, c] |
              x <- [1..lim],
              y <- [1..lim],
              let a = x^2 - y^2,
              let b = x^2 + y^2,
              let c = 2 * x * y,
              a + b + c == n]
    where lim = sqrt n

main :: IO ()
main = do
  print $ round . product . head $ triplets 1000
