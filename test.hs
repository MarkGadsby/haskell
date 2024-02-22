main = print(mergeSort [7,32,9,4,56,87,4,66,34])
-- main = print(mergeSort [7])
-- main = print(right[7,32,9,4,56,87,4,66,34])

merge :: [Int] -> [Int] -> [Int]
merge x [] = x
merge [] y = y
merge (x:xs)(y:ys) 
    | x < y = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys

left :: [Int] -> [Int]
left x = take (div (length x) 2) x

right :: [Int] -> [Int]
right x = drop (div (length x) 2) x

mergeSort :: [Int] -> [Int]
mergeSort [x] = [x]    --  base case
mergeSort x = merge (mergeSort (left x)) (mergeSort (right x))