require 'test/unit'
require_relative '../leetcode/198_House_Robber'
class HouseRobberTest < Test::Unit::TestCase
  def setup
    @rob = HouseRobber.new
    @arr = [2, 7, 11, 15]
  end

  def test_solution
    sol = @rob.rob(@arr)
    assert_equal sol, 22
  end
end
