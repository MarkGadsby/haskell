main = print (mergesort[9, 3, 10, 2, 8, 5, 1])

merge :: [Int] -> [Int] -> [Int]
merge xs [] = xs
merge [] ys = ys
merge (x:xs) (y:ys)
    | x <= y = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys

lefthalf :: [Int] -> [Int]
lefthalf a = take (length a `div` 2) a

righthalf :: [Int] -> [Int]
righthalf a = drop (length a `div` 2) a

mergesort :: [Int] -> [Int]
mergesort [] = []
mergesort [x] = [x]
mergesort xs = merge (mergesort (lefthalf xs)) (mergesort (righthalf xs))