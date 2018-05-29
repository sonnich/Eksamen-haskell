data Completed = Comp Bool String deriving(Eq, Ord, Show) 

data DatabaseItem = DbString String|DbNumber Integer|DbCompleted Completed
        deriving(Eq, Ord, Show)



theDatabase :: [DatabaseItem] 
theDatabase = 
    [ DbCompleted (Comp True "Hearthstone") 
    , DbNumber 9001 
    , DbString "Hello, world!" 
    , DbCompleted (Comp False "Fortnite") 
    , DbNumber 42 
    , DbString "Hello, from end"
    ] 

filterDbStrings :: [DatabaseItem] -> [String] 
filterDbStrings [] = []
filterDbStrings [(DbString a)] = [a]
filterDbStrings ((DbString a):xs) = a :filterDbStrings xs
filterDbStrings (_:xs) = filterDbStrings xs

sumDbNumbers :: [DatabaseItem] -> Integer 
sumDbNumbers [] = 0
sumDbNumbers [(DbNumber a)] = a
sumDbNumbers ((DbNumber a):xs) = a + sumDbNumbers xs;
sumDbNumbers (_:xs) = sumDbNumbers xs

dbCompleted :: [DatabaseItem] -> [String]
dbCompleted [] = []
dbCompleted [(DbCompleted (Comp a b))] = 
        if a ==True
                then [b]
                else [] 
dbCompleted((DbCompleted(Comp a b)):xs) = 
        if a == True
                then b : dbCompleted xs
                else dbCompleted xs
dbCompleted (_:xs)= dbCompleted xs