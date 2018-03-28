import Data.Char (digitToInt)

sumd = sum . map digitToInt . show

main = do
  putStrLn $ show $ (sumd (2 ^ 1000))
