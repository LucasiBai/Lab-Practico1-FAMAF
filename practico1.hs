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
        | x == 0 = 0

entre0y9 :: Int -> Bool
entre0y9 x = 0<=x && x<=9

rangoPrecio :: Int -> String
rangoPrecio precio | precio < 2000 = "muy barato"
                   | precio > 5000 = "demasiado caro"
                   | 2000 <= precio && precio <= 5000 = "hay que verlo bien"

absoluto :: Int -> Int
absoluto numero = if numero < 0 then (-numero) else numero


esMultiplo2 :: Int -> Bool
esMultiplo2 numero = numero `mod` 2 == 0

