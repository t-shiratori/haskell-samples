
## stackでghcコマンドを実行してファイルをコンパイルするやり方
```
stack ghc hello.hs
```
コンパイルされたファイルを実行
```
./hello
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