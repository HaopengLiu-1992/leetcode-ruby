require 'test/unit'
require_relative '../leetcode/136_Single_Number'
class SingleNumberTest < Test::Unit::TestCase
  def setup
    @single = SingleNumber.new
  end

  def test_solution
    sol = @single.single_number([1, 2, 2, 4, 4])
    assert_equal sol, 1
  end
end
