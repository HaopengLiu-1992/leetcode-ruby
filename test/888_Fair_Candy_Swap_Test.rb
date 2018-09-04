require 'test/unit'
require_relative '../leetcode/888_Fair_Candy_Swap'
class FairCandySwapTest < Test::Unit::TestCase
  def setup
    @a = [1, 2]
    @b = [3, 4]
    @swap = FairCandySwap.new
  end

  def test_solution
    check = @swap.fair_candy_swap(@a, @b)
    assert_equal check, [1, 3]
  end
end
