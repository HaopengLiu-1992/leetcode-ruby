require 'test/unit'
require_relative '../leetcode/27_Remove_Element'
class RemoveElementTest < Test::Unit::TestCase
  def setup
    @arr = [1, 2, 2, 3]
    @remove = RemoveElement.new
  end

  def test_solution
    check = @remove.remove_element(@arr, 2)
    assert_equal check, 2
  end
end
