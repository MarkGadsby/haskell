main = print(list_len [1,2,3,4,5,6,7])

list_len::[a] -> Int 
list_len [] = 0 
list_len (x:xs) = 1 + list_len xs
