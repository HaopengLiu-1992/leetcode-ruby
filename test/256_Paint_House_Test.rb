require 'test/unit'
require_relative '../leetcode/256_Paint_House'
class PaintHouseTest < Test::Unit::TestCase
  def setup
    @paint = PaintHouse.new
    @arr = [[17, 2, 17], [16, 16, 5], [14, 3, 19]]
  end

  def test_solution
    sol = @paint.min_cost(@arr)
    assert_equal sol, 10
  end
end
