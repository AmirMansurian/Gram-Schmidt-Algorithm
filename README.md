# Gram-Schmidt Algorithm

### Test if a collection of Vectors are Linearly Independent or not and finding Orthonormal Basis Using Gram-Schmidt Algorithm .
### There are n number of k-vectors (a1, a2, ..., an) and we are going to find out that they are Linearly Independent or not and also find Orthonormal basis for Span(a1, ..., an) subspace.
### Input of the algorithm is a k*n matrix (each column of matrix is a k-vector)
### Output :


  - #### if collection of n vectors are Linearly Independent that is k*n matrix containing n k-vectors (Orthonormal Basis of the Span(a1, ..., an))
  - #### else addition to orthonormal Basis, it Specify index of vectors that are Dependent(aj) to their Prevoius vectors(a1, a2, ..., aj-1) and finally return a matrix containing Coefficients of the Linear Combinational Basis Vectors that results aj
  

### For Linear Algebra Calculations (norm, inner product, ...) install "Geometry" Package and use it :


```
 install.packages("geometry")
 library(geometry)
```
