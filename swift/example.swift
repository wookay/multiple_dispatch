// example.swift

func f(a: Int) -> Int { return a+2 }
func f(a: String) -> String { return a+"bc" }
func f(i: Int, s: String) -> String { return "int,string" }
func f(s: String, i: Int) -> String { return "string,int" }

assert(3 == f(1))
assert("abc" == f("a"))
assert("int,string" == f(0, ""))
assert("string,int" == f("", 0))
