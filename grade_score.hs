main = print (gradeScore 58)

gradeScore:: Float -> String
gradeScore p 
    | p > 50 = "Distinction" 
    | p > 35 = "Pass" 
    | otherwise = "Fail"

 -- = if p > 35 then (if p > 50 then "Distiction" else "Pass") else "Fail"