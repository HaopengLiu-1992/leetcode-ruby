require 'test/unit'
require_relative '../leetcode/896_Monotonic_Array '
class MonotonicArrayTest < Test::Unit::TestCase
  def setup
    @arr = [1, 2, 2, 3]
    @m_arr = MonotonicArray.new
  end

  def test_solution
    check = @m_arr.monotonic?(@arr)
    assert_true check
  end
end
