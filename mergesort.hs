main = do
    print (merge [6,7,2] [8,2,3])
    print (leftHalf[6,7,2,78,8,2,3])
    print (rightHalf[6,7,2,78,8,2,3])
    print (mergeSort[6,7,2,78,8,2,3])

merge :: [Int] -> [Int] -> [Int]
merge a [] = a
merge [] b = b
merge (x:xs) (y:ys) 
    | x < y = x : merge xs (y:ys)
    | otherwise = y : merge (x:xs) ys

leftHalf :: [Int] -> [Int]
leftHalf a = take (div (length a) 2) a

rightHalf :: [Int] -> [Int]
rightHalf a = drop (div (length a) 2) a

mergeSort :: [Int] -> [Int]
mergeSort [] = []
mergeSort [x] = [x]
mergeSort x = merge (mergeSort (leftHalf x)) (mergeSort (rightHalf x))
