require 'test/unit'
require_relative '../leetcode/1087_Brace_Expansion'
class BraceExpansionTest < Test::Unit::TestCase
  def setup
    @be = BraceExpansion.new
  end

  def test
    assert_equal @be.expand('{a,b}c{d,e}f'), ["acdf","acef","bcdf","bcef"]
  end
end
