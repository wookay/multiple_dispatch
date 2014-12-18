# example.jl

f(a::Int) = a+2
f(a::String) = string(a, "bc")
f(::Int, ::String) = "int,string"
f(::String, ::Int) = "string,int"

@assert 3 == f(1)
@assert "abc" == f("a")
@assert "int,string" == f(0, "")
@assert "string,int" == f("", 0)
