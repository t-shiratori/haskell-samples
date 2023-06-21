
## stackでghcコマンドを実行してファイルをコンパイルするやり方
```
stack ghc main.hs
```
コンパイルされたファイルを実行
```
./main
```

## REPL

REPLを起動

```
stack exec ghci
```

## ghciでファイルをロードして使う

```
ghci> :l baby
```

## ファイル実行

initials/initials.hs

```haskell
initials :: String -> String -> String;
initials firstName lastName = [f] ++ ". " ++ [l] ++ "."
    where (f:_) = firstName
          (l:_) = lastName

main = print (initials "takashi" "shiratori")
```

```sh
@ initials % stack ghc initials.hs
[1 of 1] Compiling Main             ( initials.hs, initials.o )
Linking initials ...
@ initials % ./initials
"t. s."
```

## コメントの書き方
Haskellのプログラム中にコメントを書くには、

- 単一行：「--」の後に続けて書く
- 複数行：「{-」と「-}」の間に書く

```haskell
-- コメント
main = putStrLn "Hello, Haskell!"
```

```haskell
{-
複数行での
コメント
-}
```

## stackでghcコマンドを実行してファイルをコンパイルするやり方

```bash
stack ghc main.hs
```

コンパイルされたファイルを実行

```bash
./hello
```