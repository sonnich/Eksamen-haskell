
--number2Word:: Int -> String 
--number2Word x = translateList (digs x)

translateList :: [Int] -> String
translateList [] = []
translateList [x] = translate x
translateList (x:xs) = (translate x ++ "-") : translateList xs
         
        

digs :: ( Ord x, Integral x) => x -> [x]
digs 0 = []
digs x = digs (x `div` 10) ++ [x `mod` 10]

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

