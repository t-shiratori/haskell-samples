replicate' :: Int -> a -> [a]
replicate' n x
  | n <= 0 = [] -- 基底部
  | otherwise = x : replicate' (n - 1) x

main = do 
    print (replicate' 3 5)

