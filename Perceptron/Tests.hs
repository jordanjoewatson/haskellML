module Tests where
import Perceptron

testingInputs = [[104,1],
                 [1,104],
                 [52,3],
                 [4,79],
                 [9,109],
                 [92,23],
                 [11,78],
                 [3,109],
                 [(-2),78],
                 [192,30],
                 [103,20],
                 [4,78],
                 [23,193],
                 [1,58],
                 [98,2]]

testingResults = [(-1),
                  1,
                  (-1),
                  1,
                  1,
                  (-1),
                  1,
                  1,
                  1,
                  (-1),
                  (-1),
                  1,
                  1,
                  1,
                  (-1)]

weights = [1,1]

inputsAfterTraining = [25,24]

main = test testingInputs testingResults weights inputsAfterTraining sign
