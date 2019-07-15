require 'test/unit'
require_relative '../leetcode/39_Combination_Sum'
class CombinationSumTest < Test::Unit::TestCase
  def setup
    @comb_sum = CombinationSum.new
  end

  def test_solution
    assert_equal @comb_sum.combination_sum([2, 3], 4), [[2, 2]]
  end
end
