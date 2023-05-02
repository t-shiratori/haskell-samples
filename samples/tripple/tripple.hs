first :: (a, b, c) -> a
first (x, _, _) = x

second :: (a, b, c) -> b
second (_, y, _) = y

third :: (a, b, c) -> c
third (_, _, z) = z

main = do
    print (first (1, "a", True))
    print (second (1, "a", True))
    print (third (1, "a", True))


