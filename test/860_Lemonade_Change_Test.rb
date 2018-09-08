require 'test/unit'
require_relative '../leetcode/860_Lemonade_Change'
class LemonadeChangeTest < Test::Unit::TestCase
  def setup
    @bills = [5, 5, 5, 10, 20]
    @change = LemonadeChange.new
  end

  def test_solution
    check = @change.lemonade_change(@bills)
    assert_true check
  end
end
