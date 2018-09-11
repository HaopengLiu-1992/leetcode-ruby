require 'test/unit'
require_relative '../leetcode/70_Climbing_Stairs'
class ClimbingStairsTest < Test::Unit::TestCase
  def setup
    @test = ClimbingStairs.new
  end

  def test_solution
    res = @test.climb_stairs(1)
    assert_equal res, 1
  end
end
