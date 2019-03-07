require 'test/unit'
require_relative '../leetcode/1002_Find_Common_Characters'
class FindCommonCharactersTest < Test::Unit::TestCase
  def setup
    @a = ['bella', 'label', 'roller']
    @find = FindCommonCharacters.new
  end

  def test_solution
    sol = @find.common_chars(@a)
    assert_equal sol, ['e', 'l', 'l']
  end
end
