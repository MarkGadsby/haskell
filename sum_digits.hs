main = print (sumDigits 123456789) 

-- sumDigits :: Integer -> Integer
-- sumDigits 0 = 0
-- sumDigits n = mod n 10 + sumDigits (div n 10)


sumDigits :: Integer -> Integer
sumDigits n
    | n == 0 = 0
    | otherwise = mod n 10 + sumDigits (div n 10)