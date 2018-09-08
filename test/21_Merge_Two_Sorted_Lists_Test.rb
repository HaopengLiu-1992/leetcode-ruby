require 'test/unit'
require_relative '../leetcode/helper'
require_relative '../leetcode/21_Merge_Two_Sorted_Lists'
class MergeTwoSortedListsTest < Test::Unit::TestCase
  include Helper::LinkedListHelper
  def setup
    @l1 = init_list_by_array([1, 2, 3])
    @l2 = init_list_by_array([4, 5, 6])
    @res = [1, 2, 3, 4, 5, 6]
    @merge = MergeTwoSortedLists.new
  end

  def test_solution
    sol = @merge.merge_two_lists(@l1, @l2)
    assert_equal list_to_array(sol), @res
  end
end
