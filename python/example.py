# example.py

# sudo pip3 install multipledispatch
from multipledispatch import dispatch


@dispatch(int)
def f(a):
  return a+2

@dispatch(str)
def f(a):
  return a+"bc"

@dispatch(int, str)
def f(a, b):
  return "int,string"

@dispatch(str, int)
def f(a, b):
  return "string,int"


assert 3 == f(1)
assert "abc" == f("a")
assert "int,string" == f(0, "")
assert "string,int" == f("", 0)
