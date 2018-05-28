-- Jeg forstår opgaven som Or er en data type der enten har en datatype af én slags,
-- som skal kunne mappes over eller også har den eksempelvis en fejlbesked eller Nothing 
-- eller noget i den stil. Derfor implementerer jeg den, således at First instanser behandles,
-- mens Second bevares.


data Or f s = First s 
                | Second f

instance Functor (Or p) where
        fmap _ (Second x)  = Second x
        fmap f(First v) = First (f v)
        
        