input <- matrix(c(-1, 1, -1, 1, -1, 3, -1, 3, 1, 3, 5, 7), ncol=3, nrow = 4);
q <- matrix(0, nrow = 4, ncol = 3);

NUmberOfMatrixes <- dim(input)[2];

q[, 1] <- input[, 1]/norm(input[, 1], type="2");

for (i in seq(2, NUmberOfMatrixes, by=1))
{
  q[, i] <- input[, i];
  for (j in seq(1, i-1, by=1))
  {
     q[, i] <- q[, i] - dot(q[, j], input[, i]) * q[, j];
  }
  
  q[, i] <- q[, i] / norm(q[, i], type="2");
}
