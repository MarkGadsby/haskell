main = print(sumOfSquares 45)

sumOfSquares :: Int -> Int
sumOfSquares n
    | n <= 1 = n
    | otherwise = n * n + sumOfSquares(n- 1)

sumSquares :: [Int] -> Int
sumSquares l
    | null l = 0
    | length l == 1 = headSquared
    | otherwise = headSquared + sumSquares(tail l)
    where headSquared = head l * head l

