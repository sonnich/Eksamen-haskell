mySqr = [x^2 | x <- [1..5], x^2<=50] 
myCube = [y^3 | y <- [1..5], y^3<=50]

myTuble = zip mySqr myCube

