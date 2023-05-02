head' :: [a] -> a
head' [] = error "Can't call head on an empty list!"
head' (x:_) = x

main = do
    print (head [1,2,3])