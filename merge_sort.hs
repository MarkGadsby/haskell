-- main = print (mergeSort["Mark", "Jordan", "Floss", "Molly","Lesley", "Charlie"] (<))
main = print (mergeSort[2, 45, 22, 19, 58, 21] (>))

-- merge list_1 list_2
--    | null list_1 = list_2
--    | null list_2 = list_1
--    | head list_1 < head list_2 = head list_1 : merge (tail list_1) list_2
--    | otherwise = head list_2 : merge (tail list_2) list_1

merge :: [a] -> [a] -> (a -> a -> Bool) -> [a]
merge xs [] p = xs
merge [] ys p = ys
merge (x : xs) (y : ys) p
    | p x y = x : merge xs (y : ys) p
    | otherwise = y : merge (x : xs) ys p

leftHalf :: [a] -> [a]
leftHalf xs = take (length xs `div` 2) xs

rightHalf :: [a] -> [a]
rightHalf xs = drop (length xs `div` 2) xs

--byLength :: a -> a -> Bool
--byLength x y = length x < length y

mergeSort :: [a] -> (a -> a -> Bool) -> [a]
mergeSort [] p = []
mergeSort [x] p = [x]
mergeSort xs  p = merge (mergeSort (leftHalf xs) p) (mergeSort (rightHalf xs) p) p