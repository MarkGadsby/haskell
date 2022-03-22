main = print (keepDecrementing 0 600) 

sumDigits :: Integer -> Integer
sumDigits 0 = 0
sumDigits n = mod n 10 + sumDigits (div n 10)

isHarshad :: Integer -> Bool  
isHarshad n = mod n (sumDigits n) == 0

keepDecrementing :: Integer -> Integer -> Integer 
keepDecrementing h 0 = h
keepDecrementing h n = keepDecrementing (getNextHarshad (h + 1)) (n - 1)

getNextHarshad :: Integer -> Integer 
getNextHarshad h
    | isHarshad h = h 
    | otherwise = getNextHarshad (h + 1)
