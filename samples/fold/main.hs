{- 

畳み込み

データ構造を単一の値にまとめる。
リストを1要素ずつ1回だけ操作してそれに基づいた結果を返すような関数ならなんでも実装できる。


-}


sum' :: (Num a) => [a] -> a
-- sum' xs = foldl (\acc x -> acc + x) 0 xs
sum' = foldl (+) 0

main = do
    print (sum' [3,5,2,1])
