require 'test/unit'
require_relative '../leetcode/helper'
require_relative '../leetcode/83_Remove_Duplicates_From_Sorted_List'
class RemoveDuplicatesFromSortedListTest < Test::Unit::TestCase
  include Helper::LinkedListHelper
  def setup
    @list = init_list_by_array([1, 2, 2])
    @remove = RemoveDuplicatesFromSortedList.new
  end

  def test_solution
    sol = @remove.delete_duplicates(@list)
    assert_equal list_to_array(sol), [1, 2]
  end
end
