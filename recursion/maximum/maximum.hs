maximum' :: (Ord a) => [a] -> a
maximum' [] = error "empty list!"
maximum' [x] = x
maximum' (x:xs) = max x (maximum' xs)

main = do 
    print (maximum' [2,5,1])

