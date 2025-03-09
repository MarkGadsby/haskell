merge :: [Int]->[Int]->[Int]
merge [] l = l
merge l [] = l
merge (x:xs)(y:ys)
    | x < y = x : merge xs (y:ys)
    | otherwise = y : merge ys (x:xs) 

main = print(mergeSort [3,56,45,9,1,7,10,2,11,6,12,8])

midpoint :: [a]->Int
midpoint x = div (length x) 2

mergeSort :: [Int]->[Int]
mergeSort [x] = [x]
mergeSort l = merge (mergeSort (take (midpoint l) l)) (mergeSort (drop (midpoint l) l))