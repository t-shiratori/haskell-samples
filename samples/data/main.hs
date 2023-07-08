data Shape = Circle Float Float Float | Rectangle Float Float Float Float

area :: Shape -> Float
area (Circle _ _ r) = pi * r ^ 2
area (Rectangle x1 y1 x2 y2) = (abs $ x2 - x1) * (abs $ y2 - y1)

main = do 
   
    print (area $ Circle 10 20 30)
    print (area $ Rectangle 0 0 20 20)
    