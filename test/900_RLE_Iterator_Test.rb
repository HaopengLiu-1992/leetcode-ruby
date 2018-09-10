require 'test/unit'
require_relative '../leetcode/900_RLE_Iterator'
class RLEIteratorTest < Test::Unit::TestCase
  def setup
    @iterator = RLEIterator.new([3, 8, 0, 9, 2, 5])
  end

  def test_solution
    assert_equal @iterator.next(2), 8
    assert_equal @iterator.next(1), 8
    assert_equal @iterator.next(1), 5
    assert_equal @iterator.next(2), -1
  end
end
