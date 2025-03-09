main = do
    print (calulator "min" 5 25 125)
    print (calulator "max" 5 25 125)
    print (calulator "ave" 5 25 125)
    print (sine_cosine 90)
    print (sum_of_max_and_min 5 25 125)
    let num = 48
    putStrLn (show num) 
    print (is_Prime num)
    print (is_Prime 12)
    print (is_Prime 13)
    print (is_Prime 14)
    print (is_Prime 15)
    print (is_Prime 16)
    print (is_Prime 17)
    print (is_Prime 18)
    print (is_Prime 19)
    print (is_Prime 20)
    print (is_Prime 21)
    print (is_Prime 22)
    print (is_Prime 23)
    print (is_Prime 24)
    print (is_Prime 25)
    print (is_cleanly_divisable 18 2)

maximun_of:: Int -> Int -> Int -> Int
maximun_of x y z = max x (max y z)

minimun_of:: Int -> Int -> Int -> Int
minimun_of x y z = min x (min y z)

average_of:: Float -> Float -> Float -> Float
average_of x y z = (x + y + z) / 3

calulator:: String -> Float -> Float -> Float -> Float
calulator fuction x y z
    | fuction == "max" = max x (max y z)
    | fuction == "min" = min x (min y z)
    | fuction == "ave" = (x + y + z) / 3
    | otherwise = 1 

sine_cosine:: Double -> (Double, Double)
sine_cosine n = (sin n, cos n) 

sum_of_max_and_min:: Int -> Int -> Int -> Int
sum_of_max_and_min x y z = maximun_of x y z + minimun_of x y z

is_Prime:: Int -> Bool
is_Prime n
   | n <= 1 = False
   | otherwise = not (is_cleanly_divisable n 2)

is_cleanly_divisable :: Int -> Int -> Bool
is_cleanly_divisable n d
   | d == n = False
   | mod n d == 0 = True 
   | otherwise = is_cleanly_divisable n (d + 1)