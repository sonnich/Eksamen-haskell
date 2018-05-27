-- safeTail er implementeret med Maybe typen, for at kunne returnere Nothing,
-- når den bliver kaldt op en tom liste.

safeTail :: [a] -> Maybe [a]
safeTail [] = Nothing 
safeTail [x] = []
safeTail (_:xs) = Just xs
