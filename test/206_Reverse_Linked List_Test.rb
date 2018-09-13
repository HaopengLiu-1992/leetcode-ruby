require 'test/unit'
require_relative '../leetcode/helper'
require_relative '../leetcode/206_Reverse_Linked List'
class ReverseLinkedListTest < Test::Unit::TestCase
  include Helper::LinkedListHelper
  def setup
    @l = init_list_by_array([1, 2, 3])
    @reverse = ReverseLinkedList.new
  end

  def test_solution
    sol = @reverse.reverse_list(@l)
    assert_equal list_to_array(sol), [3, 2, 1]
  end
end
