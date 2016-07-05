module Main where
import M0
import Test.QuickCheck

{- Your code here -}

g0 :: [t] -> [t]
g0 = concat . map g1 . g2

g1 :: (t, t) -> [t]
g1 x = [fst x, snd x]

g2 :: [t] -> [(t, t)]
g2 xs = zip xs (tail xs)

{- Test your code using quickCheck -}

correct0 :: ([Int] -> [Int]) -> [Int] -> Bool
correct0 f xs = f xs == f0 xs

correct1 :: ((Int, Int) -> [Int]) -> (Int, Int) -> Bool
correct1 f (x,y) = f (x,y) == f1 (x,y)

correct2 :: ([Int] -> [(Int, Int)]) -> [Int] -> Bool
correct2 f xs = f xs == f2 xs