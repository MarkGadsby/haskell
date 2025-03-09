main = do
    print (len [134,3,4,53,6,7,8])

len :: [Int] -> Int
len [] = 0
len (x:xs) = 1 + len (xs)

