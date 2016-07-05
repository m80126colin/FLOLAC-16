module Main where
import M6
import Test.QuickCheck

{- Your code here -}

g0 :: Eq t => t -> [t] -> Int
g0 x = length . g1 x

g1 :: Eq t => t -> [t] -> [t]
g1 x = filter (x ==)

{- Test your code using quickCheck -}

correct0 :: (Int -> [Int] -> Int) -> Int -> [Int] -> Bool
correct0 f x xs = f x xs == f0 x xs

correct1 :: (Int -> [Int] -> [Int]) -> Int -> [Int] -> Bool
correct1 f x xs = f x xs == f1 x xs


