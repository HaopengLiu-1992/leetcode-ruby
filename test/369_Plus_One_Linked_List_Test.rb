require 'test/unit'
require_relative '../leetcode/helper'
require_relative '../leetcode/369_Plus_One_Linked_List'
class PlusOneLinkedListTest < Test::Unit::TestCase
  include Helper::LinkedListHelper
  def setup
    @l1 = init_list_by_array([1, 2, 3])
    @plus = PlusOneLinkedList.new
  end

  def test_solution
    sol = @plus.plus_one(@l1)
    assert_equal list_to_array(sol), [1, 2, 4]
  end
end
