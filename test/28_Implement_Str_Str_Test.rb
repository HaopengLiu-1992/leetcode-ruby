require 'test/unit'
require_relative '../leetcode/28_Implement_Str_Str'
class Implement_Str_Str_Test < Test::Unit::TestCase
  def setup
    @haystack = 'hello'
    @needle = 'll'
    @str = ImplementStrStr.new
  end

  def test_solution
    check = @str.str_str(@haystack, @needle)
    assert_equal check, 2
  end
end
