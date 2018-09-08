require 'test/unit'
require_relative '../leetcode/20_Valid_Parentheses'
class ValidParenthesesTest < Test::Unit::TestCase
  def setup
    @s = '{[()]}'
    @check = ValidParentheses.new
  end

  def test_solution
    check = @check.valid?(@s)
    assert_true check
  end
end
