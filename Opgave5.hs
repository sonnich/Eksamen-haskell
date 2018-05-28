
data Price = Price Integer 
        deriving (Show)

data Vehicle = Car Manufacturer Price | Plane Manufacturer 
        deriving (Show)


data Manufacturer = Tesla | Ferrari | Renault | Airbus
        deriving (Show)



getManu :: Vehicle -> Manufacturer 
getManu (Car a _ ) = a
getManu (Plane a) = a

isCar :: Vehicle -> Bool
isCar (Car _ _) = True
isCar _ = False


isPlane :: Vehicle -> Bool
isPlane (Plane _) = True
isPlane _ = False

areCars :: [Vehicle] -> [Bool]
areCars a = map isCar a


electric = Car Tesla (Price 700000)
sport = Car Ferrari (Price 2000000) 
family = Car Renault (Price 230000) 
sas = Plane Airbus

testList = [electric, sport, family, sas]