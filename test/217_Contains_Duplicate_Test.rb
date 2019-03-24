require 'test/unit'
require_relative '../leetcode/217_Contains_Duplicate'
class ContainsDuplicateTest < Test::Unit::TestCase
  def test_solution
    assert_true ContainsDuplicate.new.contains_duplicate([1, 2, 3, 1])
  end
end
