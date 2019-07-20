require 'test/unit'
require_relative '../leetcode/1119_Remove_Vowels_From_A_String'
class RemoveVowelsFromAStringTest < Test::Unit::TestCase
  def setup
    @rm = RemoveVowelsFromAString.new
  end

  def test
    assert_equal @rm.remove_vowels('aeiou'), ''
  end
end
