module Main where
import M9
import Test.QuickCheck

{- Your code here -}

g0 :: [t] -> [t]
g0 = map fst . g1

g1 :: [t] -> [(t, Int)]
g1 xs = filter ((0 /=) . flip mod 3 . snd) (zip xs [0..])

{- Test your code using quickCheck -}

correct0 :: ([Int] -> [Int]) -> [Int] -> Bool
correct0 f xs = f xs == f0 xs

correct1 :: ([Int] -> [(Int,Int)]) -> [Int] -> Bool
correct1 f xs = f xs == f1 xs
