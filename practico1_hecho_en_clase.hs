-- 18)a)
entre0y9 :: Int -> Bool
entre0y9 x = 0 <= x && x <= 9

-- 18)b)
rango::Int->String
rango x |(x<0)="No Puede ser"
        |(x<2000)="Muy Barato"
        |(x>5000)="Demasiado Caro"
        |(x<5000 || x>2000)="Fua"
         --XD--

-- 18)c)
absoluto:: Int->Int
absoluto x  | (x>=0)=x
            | otherwise=(-x)

--18)d)
esMultiploDe2:: Int->Bool
esMultiploDe2 x =(mod x 2)==0

--19)
esMultiploDe :: Int -> Int -> Bool
esMultiploDe x y = (mod x y) == 0


--18)d)'
customMultiploDe2:: Int ->Bool
customMultiploDe2 x = esMultiploDe x 2
 
--20)
esBisiesto::Int->Bool
esBisiesto x = (mod x 400==0 || mod x 4 == 0 && not( mod x 100 ==0) )

--21)
dispersion :: Int -> Int -> Int -> Int
dispersion x y z  | max x y == x = (max x z) - (min y z) 
                  | otherwise = (max y z) - (min x z)
                
--22)
celtofar::Fractional a=> a -> a
celtofar x = (x*1.8)+32

--23)
fahrToCelsius :: Fractional a => a -> a
fahrToCelsius x = (x - 32) / 1.8

--24)
haceFrioF::Float->Bool
haceFrioF x = fahrToCelsius(x)<8 

nombrebis::Int->String
nombrebis 1="uno"
nombrebis x="otro num"

sumarPar::(Int,Int)->Int
sumarPar (x, y)= x + y

sumarPares::(Int,Int)->(Int,Int)->(Int,Int)
sumarPares (x,y) (x1,y2)=(x+x1,y+y2)

--25)a)
segundo3 :: (Int, Int, Int) -> Int
segundo3 (x, y, z) = y

--25)b)
ordena::(Int,Int)->(Int,Int)
ordena (x,y)=(min x y , max y x)

--25)c)
rangoPrecioParametrizado ::  Float -> (Float, Float) -> String
rangoPrecioParametrizado price (mini, maxi) | price < 0 = "Noo amigooo!"
                                            | price < mini = "muy barato"
                                            | price > maxi = "demasiado caro"
                                            | otherwise = "hay que verlo bien"

--25)d)
mayor3::(Int,Int,Int)->(Bool,Bool,Bool)
mayor3 (x,y,z)=(x>3,y>3,z>3)

--25)e)
todosIguales :: (Int, Int, Int) -> Bool
todosIguales (x, y, z) = x == y && y==z
