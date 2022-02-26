main = print(abc 'd')

abc :: Char -> String
abc ch
    | ch == 'a' = "Apple"
    | ch == 'b' = "Boat"
    | ch == 'c' = "Cat"
    | otherwise = "Zebra" 