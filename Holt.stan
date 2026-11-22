data {
    int T;
    array[T] real y;
    real lambda;
}

parameters {
    array[T-1] real l;
    array[T-1] real b;
    real l1;
    real b1;
    real<lower=0, upper=1> alpha;
    real<lower=0, upper=1> beta;
    real<lower=0> sigma;
}

model {
    alpha ~ uniform(0, 1);
    beta ~ uniform(0, 1);
    sigma ~ exponential(lambda);
    l1 ~ normal(y[1], 1);
    b1 ~ normal(0, 1);
    b[1] ~ normal(b1, beta*sigma);
    l[1] ~ normal(l1 + b1, alpha*sigma);
    y[2] ~ normal(l1 + b1, sigma);
    for (t in 2:(T-1)) {
        b[t] ~ normal(b[t-1], beta*sigma);
        l[t] ~ normal(l[t-1] + b[t-1], alpha*sigma);
        y[t+1] ~ normal(l[t-1] + b[t-1], sigma);
    }
}

// the following is not important until task (e)
generated quantities {
    real y_pred = normal_rng(l[T-1] + b[T-1], sigma);
}

