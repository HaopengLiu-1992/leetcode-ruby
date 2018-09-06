require 'test/unit'
require_relative '../leetcode/12_Integer_To_Roman'
class IntegerToRomanTest < Test::Unit::TestCase
  def setup
    @num = 1994
    @parser = IntegerToRoman.new
  end

  def test_solution
    roman = @parser.int_to_roman(@num)
    assert_equal roman, 'MCMXCIV'
  end
end
