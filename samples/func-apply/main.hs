applyFunc = sum $ filter (> 10) $ map (*2) [2..10]

main = do
    print (applyFunc)
