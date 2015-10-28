module OptProblems

export getProblem

include("himmelbg.jl")
include("himmelbh.jl")
include("rosenbrock.jl")
include("sineval.jl")

function getProblem(foo::Symbol)
  return eval(foo)()
end

function getProblem(foo::ASCIIString)
  return getProblem(symbol(lowercase(foo)))
end

end
