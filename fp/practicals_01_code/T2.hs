module Main where
import M2
import Test.QuickCheck

{- Your code here -}

g0 :: [t] -> [[t]]
g0 xs = [g1 n xs | n <- [0..length xs - 1]]

g1 :: Int -> [t] -> [t]
g1 n xs = drop m xs ++ take m xs where m = length xs - n

{- Test your code using quickCheck -}

correct0 :: ([Int] -> [[Int]]) -> [Int] -> Bool
correct0 f xs = f xs == f0 xs

correct1 :: (Int -> [Int] -> [Int]) -> Int -> [Int] -> Bool
correct1 f n xs = f n xs == f1 n xs
