--Hovedfunktionen; kalder hjælpefunktionerne.
number2Word:: Int -> String 
number2Word x = translateList (digs x)

--metode til at gennemløbe listen og kalde translate på de enkelte liste-elementer
translateList :: [Int] -> String
translateList [] = []
translateList [x] = translate x
translateList (x:xs) = translate x  ++ "-" ++ translateList xs
         
        
--funktion til at splitte tallet op i digits og smide dem i en liste
digs :: ( Ord x, Integral x) => x -> [x]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

-- funktion til at oversætte det enkelte digit
translate :: Int -> String
translate x
        | x == 0 = "Nul"
        | x == 1 = "Et"
        | x == 2 = "To"
        | x == 3 = "Tre"
        | x == 4 = "Fire"
        | x == 5 = "Fem"
        | x == 6 = "Seks"
        | x == 7 = "Syv"
        | x == 8 = "Otte"
        | x == 9 = "Ni"

