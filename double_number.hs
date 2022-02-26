    main = print(applyTwice double_number 5)

    double_number::Int -> Int
    double_number n = n * 2 

    applyTwice::(Int -> Int) -> Int -> Int
    applyTwice f n = f (f n)
