require 'test/unit'
require_relative '../leetcode/75_Sort_Colors'
class SortColorsTest < Test::Unit::TestCase
  def setup
    @test = SortColors.new
    @arr = [2, 0, 2, 1, 1, 0]
  end

  def test_solution
    @test.sort_colors(@arr)
    assert_equal @arr, [0, 0, 1, 1, 2, 2]
  end
end
