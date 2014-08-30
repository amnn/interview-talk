module Main where

    main :: IO ()
    main = do
      putStr "Fibs 0 - 10: "
      print (map fib [0..10] == [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89])

    -- Task 1
    -- ------
    --
    -- Complete the definition of `fib` which defines the fibonacci
    -- sequence.

    fib :: Int -> Integer
    fib 0 = undefined
    fib 1 = undefined
    fib n = undefined
