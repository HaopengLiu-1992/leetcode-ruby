require 'test/unit'
require_relative '../leetcode/202_Happy_Number'
class HappyNumberTest < Test::Unit::TestCase
  def setup
    @happy = HappyNumber.new
  end

  def test_solution
    sol = @happy.happy?(1)
    assert_true sol
  end
end
