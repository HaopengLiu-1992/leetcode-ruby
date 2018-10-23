require 'test/unit'
require_relative '../leetcode/709_To_Lower_Case'
class ToLowerCaseTest < Test::Unit::TestCase
  def setup
    @lowercase = ToLowerCase.new
  end

  def test_solution
    sol = @lowercase.to_lower_case('Happy')
    assert_equal sol, 'happy'
  end
end
