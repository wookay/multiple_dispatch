// example.swift

func f(a: Int) -> Int { return a+2 }
func f(a: String) -> String { return a+"bc" }
func f(a: Int, b: String) -> String { return "int,string" }
func f(a: String, b: Int) -> String { return "string,int" }

assert(3 == f(1))
assert("abc" == f("a"))
assert("int,string" == f(0, b: ""))
assert("string,int" == f("", b: 0))
