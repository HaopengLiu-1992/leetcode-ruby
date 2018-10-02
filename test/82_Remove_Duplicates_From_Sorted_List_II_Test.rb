require 'test/unit'
require_relative '../leetcode/helper'
require_relative '../leetcode/82_Remove_Duplicates_From_Sorted_List_II'
class RemoveDuplicatesFromSortedListIITest < Test::Unit::TestCase
  include Helper::LinkedListHelper
  def setup
    @list = init_list_by_array([1, 2, 2])
    @remove = RemoveDuplicatesFromSortedListII.new
  end

  def test_solution
    sol = @remove.delete_duplicates(@list)
    assert_equal list_to_array(sol), [1]
  end
end
