require_relative '../leetcode/287_Find_The_Duplicate_Number'
class FindTheDuplicateNumberTest < Test::Unit::TestCase
  def setup
    @dup = FindTheDuplicateNumber.new
  end

  def test_solution
    sol = @dup.find_duplicate([1, 1, 2])
    assert_equal sol, 1
  end
end
