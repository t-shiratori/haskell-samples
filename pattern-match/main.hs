lucky :: Int -> String

lucky 7 = "Lucky Number Seven"
lucky x = "Sorry, you're out of luck, pal!"


main = do
    print (lucky 2)
    print (lucky 7)