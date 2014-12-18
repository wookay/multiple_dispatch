// example.scala 

object example {
  def f(a: Int) = a+2
  def f(a: String) = a+"bc"
  def f(i: Int, s: String) = "int,string"
  def f(s: String, i: Int) = "string,int"
}

assert(3 == example.f(1))
assert("abc" == example.f("a"))
assert("int,string" == example.f(0, ""))
assert("string,int" == example.f("", 0))
