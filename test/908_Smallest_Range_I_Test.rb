require 'test/unit'
require_relative '../leetcode/908_Smallest_Range_I'
class SmallestRangeITest < Test::Unit::TestCase
  def setup
    @arr = [1, 3]
    @k = 1
    @diff = SmallestRangeI.new
  end

  def test_solution
    sol = @diff.smallest_range_i(@arr, @k)
    assert_equal sol, 0
  end
end
