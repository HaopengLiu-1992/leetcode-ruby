require 'test/unit'
require_relative '../leetcode/helper'
require_relative '../leetcode/237_Delete_Node_In_A_LinkedList'
class DeleteNodeInALinkedListTest < Test::Unit::TestCase
  include Helper::LinkedListHelper
  def setup
    @l1 = init_list_by_array([1, 2, 3])
    @p = @l1.next
    @delete = DeleteNodeInALinkedList.new
  end

  def test_solution
    @delete.delete_node(@p)
    assert_equal list_to_array(@l1), [1, 3]
  end
end
