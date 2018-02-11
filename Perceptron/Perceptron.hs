module Perceptron where

-- ---------
-- TEST CASE
-- ---------

test :: [[Double]] -> [Double] -> [Double] -> [Double] -> (Double -> Double) -> Maybe Double
test [] [] weights testCase σ = Just(σ (sigma testCase weights))
test (x:trainData) (r:trainResult) weights testCase σ
  | ε /= r    = test ([x] ++ trainData) ([r] ++ trainResult) (wΔ x weights r ε) testCase σ
  | otherwise = test trainData trainResult weights testCase σ
  where ε = σ (sigma x weights)
test [] _ weights testCase σ = Nothing
test _ [] weights testCase σ = Nothing

-- ------------
-- SUM FUNCTION
-- ------------

sigma :: [Double] -> [Double] -> Double
sigma inputs weights = sum (zipWith (*) inputs weights)

-- -------------
-- ALTER WEIGHTS
-- -------------

wΔ :: [Double] -> [Double] -> Double -> Double -> [Double]
wΔ x w answer ε = (zipWith (+) (map (\i -> ((answer - ε) * i)) x) w)

-- --------------------
-- ACTIVATION FUNCTIONS
-- --------------------

step :: Double -> Double
step η
  | η >= 0    = 1
  | otherwise = 0

sign :: Double -> Double
sign n
  | n >= 0    = 1
  | otherwise = (-1)

sigmoid :: Double -> Double
sigmoid z = 1 / (1 + exp(-z))
