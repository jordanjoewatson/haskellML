module LinearRegression where

sumλ :: [(Float,Float)] -> ((Float,Float) -> Float) -> Float
sumλ [] λ = 0
sumλ (x:xs) λ = λ(x) + sumλ xs λ

linearRegression_findY :: [(Float,Float)] -> Float -> Float
linearRegression_findY [] x = 0
linearRegression_findY ls x = (find_α ls) + ((find_β ls) * x)

linearRegression_findX :: [(Float,Float)] -> Float -> Float
linearRegression_findX [] y = 0
linearRegression_findX ls y = (y - find_α ls) / find_β ls

find_α :: [(Float,Float)] -> Float
find_α [] = 0
find_α ls = (((sumλ ls get_y) * (sumλ ls get_x_sq)) - ((sumλ ls get_x) * (sumλ ls get_xy))) / divisor ls

find_β :: [(Float,Float)] -> Float
find_β [] = 0
find_β ls = ((fromIntegral(length ls) * (sumλ ls get_xy)) - ((sumλ ls get_x) * (sumλ ls get_y))) / divisor ls

divisor :: [(Float,Float)] -> Float
divisor ls = fromIntegral(length ls) * (sumλ ls get_x_sq) - (sumλ ls get_x)^2

get_y :: (Float,Float) -> Float
get_y (x,y) = y

get_x :: (Float,Float) -> Float
get_x (x,y) = x

get_x_sq :: (Float,Float) -> Float
get_x_sq (x,y) = x^2

get_xy :: (Float,Float) -> Float
get_xy (x,y) = x*y
