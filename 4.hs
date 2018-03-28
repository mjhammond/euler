products = [x*y | x <- [100..999], y <- [100..999]]

main = do
  putStrLn $ show $ maximum [x | x <- products, (show x) == (reverse $ show x)]
