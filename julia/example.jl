# example.jl

f(a::Int) = a+2
f(a::AbstractString) = string(a, "bc")
f(::Int, ::AbstractString) = "int,string"
f(::AbstractString, ::Int) = "string,int"

@assert 3 == f(1)
@assert "abc" == f("a")
@assert "int,string" == f(0, "")
@assert "string,int" == f("", 0)
