# haskellML
Machine Learning for Haskell

## Linear Regression

To find the y value of the linear regression function of the points (1,4), (4,2) and (5,10) when x is 5

```
linearRegression_findY [(1,4),(4,2),(5,10)] 5
```

Similarly the alternative to finding the x value when y is 5

```
linearRegression_findX [(1,4),(4,2),(5,10)] 5
```

## Perceptron

Supervised learning perceptron, activation functions are in the Perceptron.hs file.

```
test [listOfTrainingData] [trainingResults] [startingWeights] [inputs] function
test [[1,2],[4,3]] [1,(-1)] [0.5,0.25] [3,2] sign
```

the nth list in the list of training data is the training data for the nth element in the training results, the result for [1,2] is 1 and the result for [4,3] is (-1).

The weight 0.5 is associated with the inputs 1 and 4, and the weight 0.25 is the weight associated with 2 and 3 of the training data.

The activation functions that can be used unless you add more are sign, sigmoid and step

The perceptron will compute every training data with its results and if found an incorrect prediction it will adjust its weights, after going through all of the training data it will then use the [inputs] arguments to predict a result with the updated weights.
