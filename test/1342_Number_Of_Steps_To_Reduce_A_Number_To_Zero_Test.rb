require 'test/unit'
require_relative '../leetcode/1342_Number_Of_Steps_To_Reduce_A_Number_To_Zero'
class NumberOfStepsToReduceANumberToZeroTest < Test::Unit::TestCase
  def setup
    @steps = NumberOfStepsToReduceANumberToZero.new
  end

  def test
    assert_equal @steps.number_of_steps(14), 6
  end
end
