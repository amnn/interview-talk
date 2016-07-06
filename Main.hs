module Main where

-- Task 1
-- ------
--
-- Complete the definition of `fibFib` so that `fibFib n` calculates the
-- nth Fibonacci Number, using a naive translation of the recursive
-- definition:
--
--     F(0) = 1
--     F(1) = 1
--     F(n) = F(n-1) + F(n-2)

fibFib :: Int -> Integer
fibFib 0 = undefined
fibFib 1 = undefined
fibFib n = undefined

-- Task 2
-- ------
--
-- `linFib` also calculates the Fibonacci numbers, but this time by using a
-- helper function: `linFibHelper`, which is given three parameters.
--
--   - `curr` represents the current fibonacci number
--   - `next` represents the fibonacci number following it
--   - `n` is the distance from the current fibonacci number to the one we
--      want.

linFib :: Int -> Integer
linFib n = linFibHelper 1 1 n
  where
    linFibHelper curr next 0 = undefined
    linFibHelper curr next n = undefined

-- Task 3
-- ------
--
-- `Mat` is a data-type representing 2x2 matrices, such that `Mat a b c d`
-- represents the matrix:
--
--     +-----+
--     | a b |
--     | c d |
--     +-----+
--
-- Furthermore, given a matrix `m`, `a m`, `b m`, `c m`, and `d m` will extract
-- the top-left, top-right, bottom-left and bottom-right elements of `m`
-- respectively.
--
-- Define Matrix multiplication, according to the following rule:
--
--     +-----+   +-----+   +--------------+
--     | a b | * | e f | = | ae+bg, af+bh |
--     | c d |   | g h |   | ce+dg, cf+dh |
--     +-----+   +-----+   +--------------+
--
-- as the function `mul`.

data Mat = Mat { a, b, c, d :: Integer } deriving (Eq, Show)


mul :: Mat -> Mat -> Mat
mul (Mat a b c d) (Mat e f g h) = undefined

-- Task 4
-- ------
--
-- The fast exponentiation algorithm. If `n` is even, we proceed by
-- exponentiating the square of the matrix by half of `n`. If `n` is odd we
-- take the matrix to the `n-1`th power, and then multiple that with itself.

fastExp :: Mat -> Int -> Mat
fastExp  m 0 = undefined
fastExp  m n
  | even n    = undefined
  | otherwise = undefined

-- Task 5
-- ------
--
-- Define the fibonacci sequence using fast matrix
-- exponentiation, as `logFib`. (Challenging!)

logFib :: Int -> Integer
logFib n = undefined

-- Main Function, to test the functions you've created.
main :: IO ()
main = do
  check "fibFib" fibFib
  check "linFib" linFib
  check "logFib" logFib
  where
    check name fn = do
      putStr (name ++ " 0:     ")
      print (fn 0 == 1)

      putStr (name ++ " 1:     ")
      print (fn 1 == 1)

      putStr (name ++ " 0..5:  ")
      print (map fn [0..5] == [1,1,2,3,5,8])

      putStr (name ++ " 0..10: ")
      print (map fn [0..10] == [1,1,2,3,5,8,13,21,34,55,89])

      putStrLn ""
