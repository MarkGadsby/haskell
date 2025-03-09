modulus :: Int -> Int -> Int
modulus a b = a - b * (a `div` b)

main = print (modulus 11 3) 