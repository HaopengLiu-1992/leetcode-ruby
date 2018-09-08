require 'test/unit'
require_relative '../leetcode/9_Palindrome_Number'
class PalindromeNumberTest < Test::Unit::TestCase
  def setup
    @n = 121
    @check = PalindromeNumber.new
  end

  def test_solution
    sol = @check.palindrome?(@n)
    assert_true sol
  end
end
