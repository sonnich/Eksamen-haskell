efterOrd :: Ordering -> Ordering -> [Ordering]

efterOrd a b 
        | a>b = [a]
        | a==b = [a]
        | a<b = a: efterOrd (succ a) b


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