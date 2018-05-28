--efterOrd :: Ordering -> Ordering -> [Ordering]



efterInt :: Int-> Int -> [Int]
efterInt a b 
        | a>b = [a]
        | a==b = [a]
        | a<b = a: efterInt (a+1) b



efterChar :: Char -> Char -> [Char]
efterChar a b 
        | a>b = [a]
        | a==b = [a]
        | a<b = a: efterChar (succ a) b