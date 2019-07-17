require 'test/unit'
require_relative '../leetcode/216_Combination_Sum_III'
class Combination_Sum_III_Test < Test::Unit::TestCase
  def setup
    @combiii = Combination_Sum_III.new
  end

  def test_solution
    assert_equal @combiii.combination_sum3(3, 6), [[1, 2, 3]]
  end
end
