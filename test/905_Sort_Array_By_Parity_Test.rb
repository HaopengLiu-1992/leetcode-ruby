require 'test/unit'
require_relative '../leetcode/905_Sort_Array_By_Parity'
class SortArrayByParityTest < Test::Unit::TestCase
  def setup
    @arr = [1, 3]
    @sort = SortArrayByParity.new
  end

  def test_solution
    sol = @sort.sort_array_by_parity(@arr)
    assert_equal sol, [3, 1]
  end
end
