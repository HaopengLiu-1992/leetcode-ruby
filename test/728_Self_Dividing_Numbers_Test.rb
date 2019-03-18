require 'test/unit'
require_relative '../leetcode/728_Self_Dividing_Numbers'
class SelfDividingNumbersTest < Test::Unit::TestCase
  def setup
    @res = SelfDividingNumbers.new
  end

  def test_solution
    assert_equal @res.self_dividing_numbers(1, 22), [1, 2, 3, 4, 5, 6, 7, 8, 9, 11, 12, 15, 22]
  end
end
