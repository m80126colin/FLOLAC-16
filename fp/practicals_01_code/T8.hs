module Main where
import M8
import Test.QuickCheck

{- Your code here -}

g0 :: Eq t => t -> [t] -> [(t, t)]
g0 x = filter ((x ==) . snd) . g1

g1 :: [t] -> [(t, t)]
g1 xs = zip xs (tail xs)

{- Test your code using quickCheck -}

correct0 :: (Int -> [Int] -> [(Int,Int)]) -> Int -> [Int] -> Bool
correct0 f x xs = f x xs == f0 x xs

correct1 :: ([Int] -> [(Int,Int)]) -> [Int] -> Bool
correct1 f xs = f xs == f1 xs


