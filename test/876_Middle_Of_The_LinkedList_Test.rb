require 'test/unit'
require_relative '../leetcode/helper'
require_relative '../leetcode/876_Middle_Of_The_LinkedList'
class MiddleOfTheLinkedListTest < Test::Unit::TestCase
  include Helper::LinkedListHelper
  def setup
    @list = init_list_by_array([1, 2, 3, 4, 5])
    @middle = MiddleOfTheLinkedList.new
  end

  def test_solution
    sol = @middle.solution(@list)
    assert_equal sol.val, 3
  end
end
