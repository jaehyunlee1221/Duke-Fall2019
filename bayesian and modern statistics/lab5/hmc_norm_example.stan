// Normal model
//
data {
  int<lower=0> N;
  row_vector[2] X[N];
  cov_matrix[2] Sigma;
}
//
parameters {
  // Define parameters to estimate
  row_vector[2] theta;
}
//
model {
  // Likelihood part of Bayesian inference
  theta ~ normal(75,10);
  X ~ multi_normal(theta, Sigma);
}
