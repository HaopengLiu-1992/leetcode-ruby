require 'test/unit'
require_relative '../leetcode/884_Uncommon_Words_From_Two_Sentences'
class UncommonWordsFromTwoSentencesTest < Test::Unit::TestCase
  def setup
    @sen1 = 'this apple is sweet'
    @sen2 = 'this apple is sour'
    @func = UncommonWordsFromTwoSentences.new
  end

  def test_solution
    sol = @func.solution(@sen1, @sen2)
    assert_equal sol, ['sweet', 'sour']
  end
end
