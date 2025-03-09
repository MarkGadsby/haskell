main = print(list_len ['m','a','r','k'])

list_len::[Char] -> Int 
list_len [] = 0 
list_len (x:xs) = 1 + list_len xs
