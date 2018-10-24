require 'test/unit'
require_relative '../leetcode/657_Robot_Return_To_Origin'
class RobotReturnToOriginTest < Test::Unit::TestCase
  def setup
    @return = RobotReturnToOrigin.new
  end

  def test_solution
    sol = @return.judge_circle('UD')
    assert_true sol
  end
end
