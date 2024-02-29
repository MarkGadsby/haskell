main = do
    print (sum_array [10, 20, 30, 40, 50])
    print (square_array [10, 20, 30, 40, 50])
    print (square_root_array [81, 9, 16])
--    print (apply sqrt [81, 9, 16])
    print (apply (* 8) [1,2,3,4,5,6,7,8,9])
    print (apply (* 9) [1,2,3,4,5,6,7,8,9])
    print (double_array [1,2,3,4,5,6,7,8,9])

sum_array::[Int] -> Int
sum_array [] = 0 
sum_array (x:xs) = x + sum_array xs

square_array::[Int] -> [Int]
square_array[] = []
square_array (x:xs) = x * x : square_array xs

square_root_array::[Float] -> [Float]
square_root_array [] = []
square_root_array (x:xs) = sqrt x : square_root_array xs 

apply::(Int -> Int) -> [Int] -> [Int]
apply f [] = []
apply f (x:xs) = f x : apply f xs

double_array::[Int] -> [Int]
double_array [] = []
double_array (x:xs) = x * 2 : double_array xs 




