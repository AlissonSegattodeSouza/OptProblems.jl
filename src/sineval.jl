function sineval()
  f(x) = 1e4*(x[2]-sin(x[1]))^2 + x[1]^2/4
  ∇f(x) = [-2e4*cos(x[1])*(x[2]-sin(x[1])) + x[1]/2; 2e4*(x[2]-sin(x[1]))]
  H(x)=[(-2e4*sin(x[1]))*(x[2]-sin(x[1]))+(-2e4*cos(x[1])*(x[2]-sin(x[1])))*(-cos(x[1]))+0.5 -2e4*cos(x[1])
  -2e4*cos(x[1]) 2e4]
  x0=[1, 4.7123]
  return f, ∇f, H, x0
end
