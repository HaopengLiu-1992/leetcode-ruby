require 'test/unit'
require_relative '../leetcode/66_Plus_One'
class PlusOneTest < Test::Unit::TestCase
  def setup
    @num = [1, 2, 3, 4]
    @p1 = PlusOne.new
  end

  def test_solution
    res = @p1.plus_one(@num)
    assert_equal res, [1, 2, 3, 5]
  end
end
