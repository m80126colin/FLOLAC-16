module Main where
import MChallenge
import Test.QuickCheck

{- Your code here -}

sol :: Eq t => [t] -> [t] -> [t]
sol pat text | length match > 0 = match!!0
             | otherwise        = take 0 text
             where match = filter ((pat ==) . take (length pat)) [drop n text | n <- [0..length text - length pat]]

{- Test your code using quickCheck -}

correct0 :: ([Int] -> [Int] -> [Int]) -> [Int] -> [Int] -> Bool
correct0 f xs ys = f xs ys == find xs ys

