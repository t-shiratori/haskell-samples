quicksort :: (Ord a) => [a] -> [a]
quicksort [] = []
quicksort (x:xs) = 
  let smallerOfEqual = [a | a <- xs, a <= x]
      larger = [a | a <- xs, a > x ]
  in quicksort smallerOfEqual ++ [x] ++ quicksort larger

main = do 
    print (quicksort [10,1,9,3,7,2,5,4,6,8,0])

