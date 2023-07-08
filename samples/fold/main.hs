{- 

畳み込み

データ構造を単一の値にまとめる。
リストを1要素ずつ1回だけ操作してそれに基づいた結果を返すような関数ならなんでも実装できる。


-}

{- リストの合計値を出す関数 -}
sum' :: (Num a) => [a] -> a
-- sum' xs = foldl (\acc x -> acc + x) 0 xs
sum' = foldl (+) 0

{- リストに値が含まれるかどうかを確認する関数 -}
elem' :: (Eq a) => a -> [a] -> Bool
elem' y ys = foldr (\x acc -> if x == y then True else acc) False ys

main = do
    print (sum' [3,5,2,1])
    print (elem' 6 [3,5,2,1,9,4,6,7])
    print (elem' 6 [3,5,2,1,9,4,7])
