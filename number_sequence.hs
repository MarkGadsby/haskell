main = print (factorial 1000)

nthTerm :: Integer -> Integer -> Integer
nthTerm 1 i = 1
nthTerm n i = i + nthTerm (n - 1) i 


gcD :: Integer -> Integer -> Integer
gcD x 0 = x
gcD x y = gcD y (mod x y)


factorial :: Integer -> Integer 
factorial 1 = 1
factorial n = n * factorial (n -1)

