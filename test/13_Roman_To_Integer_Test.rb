require 'test/unit'
require_relative '../leetcode/13_Roman_To_Integer'
class RomanToIntegerTest < Test::Unit::TestCase
  def setup
    @roman = 'MCMXCIV'
    @parser = RomanToInteger.new
  end

  def test_solution
    int = @parser.roman_to_int(@roman)
    assert_equal int, 1994
  end
end
