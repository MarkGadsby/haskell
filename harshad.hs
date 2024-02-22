main = print (keepDecrementing 0 600) 

--sumDigits 0 = 0
--sumDigits n = mod n 10 + sumDigits (div n 10)

sumDigits :: Integer -> Integer
sumDigits n
    | n == 0 = 0
    | otherwise = mod n 10 + sumDigits (div n 10)

isHarshad :: Integer -> Bool  
isHarshad n = mod n (sumDigits n) == 0

keepDecrementing :: Integer -> Integer -> Integer 
keepDecrementing c n
    | n == 0 = c
    | otherwise = keepDecrementing (getNextHarshad (c + 1)) (n - 1)

getNextHarshad :: Integer -> Integer 
getNextHarshad n
    | isHarshad n = n 
    | otherwise = getNextHarshad (n + 1)
