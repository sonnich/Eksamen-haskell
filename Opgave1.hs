--mySquare, med et predikat, der fortæller at kun værdier under eller lig 50 skal med;
mySqr = [x^2 | x <- [1..5], x^2<=50] 
--myCube, med et predikat, der fortæller at kun værdier under eller lig 50 skal med;
myCube = [y^3 | y <- [1..5], y^3<=50]
--Combinerer de to lister til tubler via zip
myTuble = zip mySqr myCube

