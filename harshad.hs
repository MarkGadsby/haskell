main = do
    print (get_nth_harshard 600 0) 

get_nth_harshard :: Integer -> Integer -> Integer 
get_nth_harshard c n
    | c == 0 = n
    | otherwise = get_nth_harshard (c - 1) (get_next_harshad (n + 1))

sum_digits :: Integer -> Integer
sum_digits n
    | n == 0 = 0
    | otherwise = mod n 10 + sum_digits (div n 10)

is_harshad :: Integer -> Bool  
is_harshad n = mod n (sum_digits n) == 0

get_next_harshad :: Integer -> Integer
get_next_harshad n 
    | is_harshad n  = n 
    | otherwise = get_next_harshad (n + 1) 
