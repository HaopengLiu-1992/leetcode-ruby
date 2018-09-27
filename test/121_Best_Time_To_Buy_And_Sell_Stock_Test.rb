require 'test/unit'
require_relative '../leetcode/121_Best_Time_To_Buy_And_Sell_Stock'
class BestTimeToBuyAndSellStockTest < Test::Unit::TestCase
  def setup
    @stock = BestTimeToBuyAndSellStock.new
  end

  def test_solution
    sol = @stock.max_profit([7, 1, 5, 3, 6, 4])
    assert_equal sol, 5
  end
end
