require 'test/unit'
require_relative '../leetcode/349_Intersection_Of_Two_Arrays'
class IntersectionOfTwoArrays
  def setup
    @intersecton = IntersectionOfTwoArrays.new
  end

  def test_solution
    assert_equal @intersecton.intersection([2], [2]), [2]
  end
end
