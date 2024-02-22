main = do 
    print (mergeSort[2, 45, 22, 19, 58, 21, 3, 44, 23, 20, 59, 22])

merge :: [Int] -> [Int] -> [Int]
merge a [] = a
merge [] b = b
merge (x : xs) (y : ys) 
    | x < y = x : merge xs (y : ys) 
    | otherwise = y : merge (x : xs) ys

leftHalf :: [Int] -> [Int]
leftHalf a = take (div (length a) 2) a

rightHalf :: [Int] -> [Int]
rightHalf a = drop (div (length a) 2) a

mergeSort :: [Int] -> [Int]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort xs = merge (mergeSort (leftHalf xs)) (mergeSort (rightHalf xs)) 