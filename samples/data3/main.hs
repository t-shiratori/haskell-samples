{- 

二分探索木

[二分探索木とは - ITを分かりやすく解説](https://medium-company.com/%E4%BA%8C%E5%88%86%E6%8E%A2%E7%B4%A2%E6%9C%A8/)
[うさぎでもわかる2分探索木　前編　2分探索木の基礎（表現・追加・削除） | 工業大学生ももやまのうさぎ塾](https://www.momoyama-usagi.com/entry/info-algo-tree)


木構造とは
木構造（きこうぞう）とは、データ構造の1つで木のような階層構造でデータを管理するものです。
- 木構造の要素部分を節（ノード）
- 親のない最上位のノードを根（ルート）
- 子のないノードを葉（リーフ）
- ノードとノードを繋ぐ線のことを枝（ブランチ）

二分探索木（英：binary search tree）とは、木構造の左部分と右部分の関係が「左の子 < 親 < 右の子」になっている二分木のことです。
-}

data Tree a = EmptyTree | Node a (Tree a) (Tree a) deriving (Show)

{- 葉（子を持たない） 　-}
singleton :: a -> Tree a
singleton x = Node x EmptyTree EmptyTree

{- ある要素とある木を取って、要素が挿入された新しい木を返す -}
treeInsert :: (Ord a) => a -> Tree a -> Tree a
treeInsert x EmptyTree = singleton x
treeInsert x (Node a left right)
  | x == a = Node x left right
  | x < a = Node a (treeInsert x left) right
  | x > a = Node a left (treeInsert x right)

{- ある要素が木に属しているか判定する関数 　-}
treeElem :: (Ord a) => a -> Tree a -> Bool
treeElem x EmptyTree = False
treeElem x (Node a left right)
  | x == a = True
  | x < a = treeElem x left
  | x > a = treeElem x right


main = do

    {- 空の木から始め、リストを右から巡ってアキュムレーターの木に要素を追加していく 　-}
    let nums = [8,6,4,1,7,3,5]
    let numsTree = foldr treeInsert EmptyTree nums
    print numsTree

    print (treeElem 3 numsTree)
    print (treeElem 9 numsTree)
    