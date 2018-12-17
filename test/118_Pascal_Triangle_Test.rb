require 'test/unit'
require_relative '../leetcode/118_Pascal_Triangle'
class PascalTriangleTest < Test::Unit::TestCase
  def setup
    @num = 2
    @tri = PascalTriangle.new
  end

  def test_solution
    res = @tri.generate(@num)
    assert_equal res, [[1], [1, 1]]
  end
end
