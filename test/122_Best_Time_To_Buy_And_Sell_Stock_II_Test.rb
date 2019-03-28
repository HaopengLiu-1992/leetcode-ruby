require 'test/unit'
require_relative '../leetcode/122_Best_Time_To_Buy_And_Sell_Stock_II'
class BestTimeToBuyAndSellStockIITest < Test::Unit::TestCase
  def setup
    @stock = BestTimeToBuyAndSellStockII.new
  end

  def test_solution
    sol = @stock.max_profit([7, 1, 5, 3, 6, 4])
    assert_equal sol, 7
  end
end
