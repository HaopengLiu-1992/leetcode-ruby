require 'test/unit'
require_relative '../leetcode/387_First_Unique_Character_In_A_String'
class FirstUniqueCharacterInAStringTest < Test::Unit::TestCase
  def test_solution
    assert_equal FirstUniqueCharacterInAString.new.first_uniq_char('eeetcode'), 3
  end
end
