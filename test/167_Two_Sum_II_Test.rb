require 'test/unit'
require_relative '../leetcode/167_Two_Sum_II'
class TwoSumIITest < Test::Unit::TestCase
  def setup
    @twosum = TwoSumII.new
    @arr = [2, 7, 11, 15]
    @tgt = 9
  end

  def test_solution
    sol = @twosum.two_sum(@arr, @tgt)
    assert_equal sol, [1, 2]
  end
end
