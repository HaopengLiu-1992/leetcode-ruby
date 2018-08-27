require 'test/unit'
require_relative '../leetcode/helper'
require_relative '../leetcode/2_Add_Two_Numbers'
class AddTwoNumbersTest < Test::Unit::TestCase
  include Helper::LinkedListHelper
  def setup
    @l1 = init_list_by_array([1, 2, 3])
    @l2 = init_list_by_array([4, 3, 2])
    @res = [5, 5, 5]
    @add_two_numbers = AddTwoNumbers.new
  end

  def test_solution
    sol = @add_two_numbers.solution(@l1, @l2)
    assert_equal list_to_array(sol), @res
  end
end
