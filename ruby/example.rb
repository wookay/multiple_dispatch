# example.rb

require 'multi'
require "test/unit"

class TestExample < Test::Unit::TestCase
  def test_multiple_dispatch

    multi(:f, Fixnum) { |a| a+2 }
    multi(:f, String) { |a| a+"bc" }
    multi(:f, Fixnum, String) { "int,string" }
    multi(:f, String, Fixnum) { "string,int" }

    assert_equal 3, f(1)
    assert_equal "abc", f("a")
    assert_equal "int,string", f(0, "")
    assert_equal "string,int", f("", 0)

  end
end
