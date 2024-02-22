main = do
    print (calulator "min" 5 25 125)
    print (calulator "max" 5 25 125)
    print (calulator "ave" 5 25 125)

maximun_of :: Int -> Int -> Int -> Int
maximun_of x y z = max x (max y z)

minimun_of :: Int -> Int -> Int -> Int
minimun_of x y z = min x (min y z)

average_of :: Float -> Float -> Float -> Float
average_of x y z = (x + y + z) / 3

calulator :: String -> Float -> Float -> Float -> Float
calulator fuction x y z
    | fuction == "max" = max x (max y z)
    | fuction == "min" = min x (min y z)
    | fuction == "ave" = (x + y + z) / 3
    | otherwise = 1 