main = do 
    print (squares [3,4,9,6])
    print (sumSquares mylist)
    print (squareRoot [3,4,9,6])
    print (apply (/5) [3,4,9,6])
    print (append_item 5 mylist)

mylist = [3,4,9,6]

squares :: [Float] -> [Float]
squares [] = []
squares [x] = [x * x]
squares (x:xs) = x * x : squares xs  

squareRoot :: [Float] -> [Float]
squareRoot [] = []
squareRoot [x] = [sqrt x]
squareRoot (x : xs) = sqrt x : squareRoot xs 

apply :: (Float -> Float) -> [Float] -> [Float]
apply f[] = []
apply f[x] = [f x]
apply f(x:xs) = f x : apply f xs

append_item :: Int -> [Int] -> [Int]
append_item n [] = [n]
append_item n (x:xs) = x : append_item n xs

sumSquares :: [Int] -> Int
sumSquares [] = 0
sumSquares [x] = x * x
sumSquares (x:xs) = x * x + sumSquares xs