module Main where
import M5
import Test.QuickCheck

{- Your code here -}

g0 :: [t] -> [[t]]
g0 xs = [drop n xs | n <- g1 xs]

g1 :: [t] -> [Int]
g1 xs = [0..length xs]

{- Test your code using quickCheck -}

correct0 :: ([Int] -> [[Int]]) -> [Int] -> Bool
correct0 f xs = f xs == f0 xs

correct1 :: ([Int] -> [Int]) -> [Int] -> Bool
correct1 f xs = f xs == f1 xs


