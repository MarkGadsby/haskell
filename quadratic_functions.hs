main = print (quadraticRoots 3 5 (-19))

-- partRoot :: Float -> Float -> Float -> Float
-- partRoot a b c = sqrt(b * b  - 4 * a * c)

quadraticRoots :: Float -> Float -> Float -> (Float,Float)
quadraticRoots a b c = let p = sqrt(b * b - 4 * a * c)
                        in ((- b + p) / (2 * a), (- b - p) / (2 * a))

