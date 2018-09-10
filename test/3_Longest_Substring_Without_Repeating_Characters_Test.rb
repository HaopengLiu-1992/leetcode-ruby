require 'test/unit'
require_relative '../leetcode/3_Longest_Substring_Without_Repeating_Characters'
class LengthOfLongestSubStringTest < Test::Unit::TestCase
  def setup
    @l1 = 'abcdeda'
    @longeststr = LengthOfLongestSubString.new
  end

  def test_solution
    sol = @longeststr.solution(@l1)
    assert_equal 5, sol
  end
end
