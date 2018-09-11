require 'test/unit'
require_relative '../leetcode/746_Min_Cost_Climbing_Stairs'
class MinCostClimbingStairsTest < Test::Unit::TestCase
  def setup
    @min_cost = MinCostClimbingStairs.new
  end

  def test_solution
    cost = @min_cost.min_cost_climbing_stairs([1, 100, 1, 1, 1, 100, 1, 1, 100, 1])
    assert_equal cost, 6
  end
end