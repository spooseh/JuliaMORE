using Random
Random.seed!(1984)
n = 100

x = 2.5 * randn(n) .+ 1.5   # Array of n values with mean = 1.5, stddev = 2.5
res = 0.5 * randn(n)        # Generate n residual terms
y = 2 .+ 0.3 * x .+ res          # Actual values of Y

using Plots
scatter(x,y)

using DataFrames
data = DataFrame(X=x, Y=y)

using StatsModels
fm = @formula(Y ~ X)

using GLM
mod = lm(fm, data)

println(mod)

# julia --project=./ ols.jl from Terminal
# include("ols.jl") from REPL


