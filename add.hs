main = print(prepend_item 6 [6,8,9])

prepend_item:: Int -> [Int]->[Int]
prepend_item y (xs) = y : xs 

