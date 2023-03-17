using Random, DataFrames, StatsModels, GLM

Random.seed!(1984)
n = 100

x = 2.5 * randn(n) .+ 1.5   # Array of n values with mean = 1.5, stddev = 2.5
res = 0.5 * randn(n)        # Generate n residual terms
y = 2 .+ 0.3 * x .+ res     # Actual values of Y

data = DataFrame(X=x, Y=y)

fm = @formula(Y ~ X)

fit_ols = lm(fm, data)

println(fit_ols)

# julia --project=./ ols.jl from Terminal
# include("ols.jl") from REPL


