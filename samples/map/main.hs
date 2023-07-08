import qualified Data.Map as Map


phoneBook :: Map.Map String String
phoneBook = Map.fromList [("alice", "1234-5678"), ("bob", "2345-6789")]

main = do
    print (phoneBook)
    print $ Map.lookup "alice" phoneBook -- => Just "1234-5678"
    let phoneBook2 = Map.insert "carol" "3456-7890" phoneBook 
    print $ Map.lookup "carol" phoneBook2 -- => Just "3456-7890"
    let phoneBook3 = Map.delete "bob" phoneBook2
    print $ Map.lookup "bob" phoneBook3 -- => Nothing
    print $ Map.size phoneBook3
