require 'test/unit'
require_relative '../leetcode/203_Remove_Linked_List_Elements'
class RemoveLinkedListElementsTest < Test::Unit::TestCase
  include Helper::LinkedListHelper
  def setup
    @l = init_list_by_array([1, 2, 3])
    @remove = RemoveLinkedListElements.new
  end

  def test_solution
    sol = @remove.remove_elements(@l, 1)
    assert_equal list_to_array(sol), [2, 3]
  end
end
