input <- matrix(c(-1, 1, -1, 1, -1, 3, -1, 3, 1, 3, 5, 7), ncol=3, nrow = 4);
q <- matrix(0, nrow = 4, ncol = 3);

NUmberOfMatrixes <- dim(input)[2];
NumberOfElements <- dim(input)[1];
Zero_no <- 0;

q[, 1] <- input[, 1]/norm(input[, 1], type="2");

for (i in seq(2, NUmberOfMatrixes, by=1))
{
  q[, i] <- input[, i];
  for (j in seq(1, i-1, by=1))
  {
     q[, i] <- q[, i] - dot(q[, j], input[, i]) * q[, j];
  }
  
  if (all(q[, i]==0))
    Zero_no <- Zero_no + 1;
    
  q[, i] <- q[, i] / norm(q[, i], type="2");
}


qt <- matrix(rep(0, (NUmberOfMatrixes - Zero_no) * NumberOfElements), nrow = NumberOfElements, ncol = NUmberOfMatrixes - Zero_no);
Dependent_Set <- rep(0, Zero_no);
LinearCombiniation <- matrix(rep(Zero_no * NumberOfElements), nrow = NumberOfElements, ncol = Zero_no);

j <- 1;
k <- 1;
for (i in seq(1, NUmberOfMatrixes, by=1))
{
  if (all(q[, i]==0))
  {
    for (m in NUmberOfMatrixes - Zero_no)
    {
      LinearCombiniation[, j] <- LinearCombiniation[, j] + dot(q[, i], qt[, m]) * qt[, m];  
    }
    Dependent_Set[j] <- i;
    j <- j + 1;
  }
  else
  {
    qt[, k] <- q[, i];
    k <- k + 1;
  }
}

if (Zero_no == 0)
{
  print("Input Vectors are Linearly Independent. Below is a Orthonormal Basis for Span(a1, ..., an) : ");
  print(qt);
}
if (Zero_no != 0)
{
  print("Input Vectors a1, ..., an are not Linearly Independent.  Below is a Orthonormal Basis for Span(a1, ..., an) :  ");
  print(qt);
  print("Index of Vectors Dependent to their Prevoius Vector : ");
  print(Dependent_Set);
  print("Coefficient of Linear Combinational of Dependent Vectors according to Orthonormal Basis :")
  print(LinearCombiniation);
}
