require 'test/unit'
require_relative '../leetcode/17_Letter_Combinations_Of_A_Phone_Number'
class LetterCombinationsOfAPhoneNumberTest < Test::Unit::TestCase
  def setup
    @digits = '23'
    @check_combo = LetterCombinationsOfAPhoneNumber.new
  end

  def test_solution
    res = @check_combo.letter_combinations(@digits)
    assert_equal res, ['ad', 'ae', 'af', 'bd', 'be', 'bf', 'cd', 'ce', 'cf']
  end
end
