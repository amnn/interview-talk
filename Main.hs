module Main where

    -- Task 1
    -- ------
    -- Complete the definition of `fib` which defines the fibonacci
    -- sequence.

    fib :: Int -> Integer
    fib 0 = undefined
    fib 1 = undefined
    fib n = undefined

    -- Task 2
    -- ------
    -- Complete the definition of `isQorR` to return `True` if and only if
    -- its argument is 'q' or 'r'.

    isQorR :: Char -> Bool
    isQorR c = undefined

    allQsOrRs :: String -> Bool
    allQsOrRs = all isQorR

    -- Task 3
    -- ------
    -- This function returns the number of q's needed after all the Rule 1's
    -- are applied when generating a string in the Scribble game.
    -- Every `q` in the string counts for 1 `q` and every `r` counts for 3.

    qCount :: String -> Int
    qCount []     = undefined
    qCount (x:xs) = undefined

    -- Task 4
    -- ------
    -- This function decides whether a given word can be reached by playing
    -- the Scribble game. The conditions for a word being reachable are:
    --
    --   * Must start with a 'P'
    --   * The P must be followed by a string of Qs and Rs
    --   * That string can either be "q" or the `qCount` mod 6 must be either
    --     2 or 4.
    --
    -- Hint 1: The first condition is already dealt with using the pattern
    -- matching in the template below.
    --
    -- Hint 2: the qCount of the string, modulo 6 is provided as the variable
    -- `qs`.

    scribble :: String -> Bool
    scribble ('p':xs) = undefined
      where
        qs = qCount xs `mod` 6

    scribble _ = False

    -- Main Function, to test the functions you've created.
    main :: IO ()
    main = do
      putStr "Fibs 0 - 10: "
      print (map fib [0..10] == [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89])

      putStr "isQorR: "
      print (isQorR 'q' && isQorR 'r' && not (isQorR 'p') && not (isQorR 'a'))

      putStr "qCount: "
      print (qCount "" == 0 && qCount "qqqq" == 4 && qCount "qr" == 4)

      putStr "scribble: "
      print (scribble "pq" &&
             scribble "pqr" &&
             not (scribble "qpr") &&
             not (scribble "pr"))
