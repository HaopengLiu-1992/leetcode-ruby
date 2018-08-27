require 'test/unit'
require_relative '../leetcode/1_Two_Sum'
class TwoSumTest < Test::Unit::TestCase
  def setup
    @arr = [[1, 2, 3], [3, 4, 2]]
    @target = [3, 7]
    @res = [[0, 1], [0, 1]]
    @two_sum = TwoSum.new
  end

  def test_solution
    (0..1).each do |i|
      assert_equal(@two_sum.solution(@arr[i], @target[i]), @res[i])
    end
  end
end
