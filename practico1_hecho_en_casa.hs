-- 14)
average :: Float -> Float -> Float
average first second = (first + second) / 2

-- 15)
f :: Int -> Int
f x = 5 * x

duplica :: Int -> Int
duplica a = a + a

por2 :: Int -> Int
por2 y = 2*y

multiplicar :: Int -> Int -> Int
multiplicar zz tt = zz*tt

-- 17)
g :: Int -> Int
g y = 8 * y

h :: Int -> Int -> Int
h z w = z + w

j :: Int -> Bool
j x = x <= 0

-- 18)
signo :: Int -> Int
signo x | x > 0 = 1
        | x < 0 = -1
        | otherwise = 0

entre0y9 :: Int -> Bool
entre0y9 x = 0<=x && x<=9

rangoPrecio :: Int -> String
rangoPrecio precio | precio < 2000 = "muy barato"
                   | precio > 5000 = "demasiado caro"
                   | otherwise = "hay que verlo bien"

absoluto :: Int -> Int
absoluto numero | numero < 0 = (-numero)  
                | otherwise = numero


esMultiplo2 :: Int -> Bool
esMultiplo2 numero = numero `mod` 2 == 0

-- 19)
esMultiploDe :: Int -> Int -> Bool
esMultiploDe multiplo numero = numero `mod` multiplo == 0

-- 20)
esBisiesto :: Int -> Bool
esBisiesto anio = anio `mod` 400 == 0 || (anio `mod` 4 == 0 && not (anio `mod` 100 == 0))

-- 21)
dispersion :: Int -> Int -> Int -> Int
dispersion primero segundo tercero  | (max primero segundo) == primero = (max primero tercero) - (min segundo tercero)
                                    | otherwise = (max segundo tercero) - (min primero tercero) 

-- 22)
celsiusToFahr :: Fractional a => a -> a
celsiusToFahr celsius = celsius * 1.8 + 32

-- 23)
fahrToCelsius :: Fractional a => a -> a
fahrToCelsius fahr = (fahr - 32) / 1.8

-- 24)
haceFrioF :: Int -> Bool 
haceFrioF grados = grados < 8

-- 25)
segundo3 :: (Int, Int, Int) -> Int
segundo3 (primero, segundo, tercero) = segundo

ordena :: (Int, Int) -> (Int, Int)
ordena (primero, segundo) = if primero > segundo then (segundo, primero) else (primero, segundo)

rangoPrecioParametrizado :: Int -> (Int, Int) -> String
rangoPrecioParametrizado precio (menor, mayor)  | precio < 0 = "esto no puede ser!"
                                                | menor <= precio && precio <= mayor = "hay que verlo bien"
                                                | precio < menor = "muy barato"
                                                | precio > mayor = "muy caro"
                                                
mayor3 :: (Int, Int, Int) -> (Bool, Bool, Bool)
mayor3 (primero, segundo, tercero) = (primero > 3,segundo > 3, tercero > 3)

todosIguales :: (Int, Int, Int) -> Bool
todosIguales (primero, segundo, tercero) = primero == segundo && segundo == tercero
