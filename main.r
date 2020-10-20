library(geometry)         # Geometry library to use norm function
source("Gram_Schmdit.r")  # add file containing Gram_Schmdit Algorithm function

Number <- 4   # Enter Number of Vectors here  
Dim <- 4      # Enter Dimension of Vectors here
Vectors <- matrix(c(-1, 1, -1, 1, -1, 3, -1, 3, 1, 3, 5, 7), nrow = Dim, ncol = Number);   # Enter Elements of n k-vectors Respectively

Gram_Schmidt(Vectors)