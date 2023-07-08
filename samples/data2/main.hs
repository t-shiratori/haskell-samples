import qualified Data.Map as Map

data LokerState = Taken | Free deriving (Show,Eq)
type Code = String
type LockerMap = Map.Map Int (LokerState, Code)


lockerLookup :: Int -> LockerMap -> Either String Code
lockerLookup lockerNumber map = 
    case Map.lookup lockerNumber map of
            Nothing -> Left $ "Locker " ++ show lockerNumber ++ " doesn't exist!"
            Just (state, code) -> if state /= Taken 
                then Right code
                else Left $ "Locker " ++ show lockerNumber ++ " is already taken!"

lockers :: LockerMap
lockers = Map.fromList
    [(100, (Taken, "ZD391")),
    (101, (Free, "3ad8dje91")),
    (102, (Taken, "99die")),
    (103, (Free, "bnmdid9")),
    (104, (Free, "22fdsa88"))]

main = do 
   
    print (lockerLookup 100 lockers)
    print (lockerLookup 101 lockers)
    print (lockerLookup 102 lockers)
    print (lockerLookup 103 lockers)
    print (lockerLookup 104 lockers)
    print (lockerLookup 105 lockers)
    