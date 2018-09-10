require 'test/unit'
require_relative '../leetcode/901_Online_Stock_Span'
class OnlineStockSpanTest < Test::Unit::TestCase
  def setup
    @iterator = OnlineStockSpan.new
  end

  def test_solution
    assert_equal @iterator.next(100), 1
    assert_equal @iterator.next(80), 1
    assert_equal @iterator.next(60), 1
    assert_equal @iterator.next(70), 2
    assert_equal @iterator.next(60), 1
    assert_equal @iterator.next(75), 4
    assert_equal @iterator.next(85), 6
  end
end
