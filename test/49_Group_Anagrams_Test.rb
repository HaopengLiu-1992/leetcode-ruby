require 'test/unit'
require_relative '../leetcode/49_Group_Anagrams'
class GroupAnagramsTest < Test::Unit::TestCase
  def setup
    @strs = ['eat', 'tea', 'tan', 'ate', 'nat', 'bat']
    @group = GroupAnagrams.new
  end

  def test_solution
    @group.group_anagrams(@strs)
  end
end
