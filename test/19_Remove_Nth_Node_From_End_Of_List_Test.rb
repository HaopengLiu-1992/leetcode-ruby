require 'test/unit'
require_relative '../leetcode/helper'
require_relative '../leetcode/19_Remove_Nth_Node_From_End_Of_List'
class RemoveNthNodeFromEndOfListTest < Test::Unit::TestCase
  include Helper::LinkedListHelper
  def setup
    @l1 = init_list_by_array([1, 2, 3, 4, 5])
    @n = 1
    @res = [1, 2, 3, 4]
    @remove = RemoveNthNodeFromEndOfList.new
  end

  def test_solution
    sol = @remove.remove_nth_from_end(@l1, @n)
    assert_equal list_to_array(sol), @res
  end
end
