require 'test/unit'
require_relative '../leetcode/14_Longest_Common_Prefix'
class LongestCommonPrefixTest < Test::Unit::TestCase
  def setup
    @arr = ['flower', 'flow', 'flight']
    @check = LongestCommonPrefix.new
  end

  def test_solution
    prefix = @check.longest_common_prefix(@arr)
    assert_equal prefix, 'fl'
  end
end
