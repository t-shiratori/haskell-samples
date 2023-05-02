maximum' :: (Ord a) => [a] -> a
maximum' [] = error "empty list!" -- 基底部
maximum' [x] = x -- 基底部
maximum' (x:xs) = max x (maximum' xs)

main = do 
    print (maximum' [2,5,1])

