require 'test/unit'
require_relative '../leetcode/942_DI_String_Match'
class DIStringMatchTest < Test::Unit::TestCase
  def setup
    @di = DIStringMatch.new
  end

  def test_solution
    assert_equal @di.di_string_match('IDID'), [0, 4, 1, 3, 2]
  end
end
