require 'test/unit'
require_relative '../leetcode/26_Remove_Duplicates_From_Sorted_Array'
class RemoveDuplicatesFromSortedArrayTest < Test::Unit::TestCase
  def setup
    @test = RemoveDuplicatesFromSortedArray.new
    @arr = [1, 1, 2]
  end

  def test_solution
    res = @test.remove_duplicates(@arr)
    assert_equal res, 2
    assert_equal @arr, [1, 2, 1]
  end
end
