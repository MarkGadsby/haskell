main = do 
    print (squares [3,4,9,6])
    print (squareRoot [3,4,9,6])
    print (apply (/5) [3,4,9,6])

squares :: [Float] -> [Float]
squares [] = []
squares [x] = [x * x]
squares (x : xf) = x * x : squares xf  

squareRoot :: [Float] -> [Float]
squareRoot [] = []
squareRoot [x] = [sqrt x]
squareRoot (x : xs) = sqrt x : squareRoot xs 

apply :: (Float -> Float) -> [Float] -> [Float]
apply f[] = []
apply f[x] = [f x]
apply f(x:xs) = f x : apply f xs

