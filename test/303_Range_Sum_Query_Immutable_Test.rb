require 'test/unit'
require_relative '../leetcode/303_Range_Sum_Query_Immutable'
class NumArrayTest < Test::Unit::TestCase
  def setup
    @sum = NumArray.new([-2, 0, 3, -5, 2, -1])
  end

  def test_solution
    assert_equal @sum.sum_range(0, 2), 1
    assert_equal @sum.sum_range(2, 5), -1
    assert_equal @sum.sum_range(0, 5), -3
  end
end
