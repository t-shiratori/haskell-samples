compFunc = map (negate . sum . tail) [[1..5], [3..6], [1..7]]

main = do
    print (compFunc)
