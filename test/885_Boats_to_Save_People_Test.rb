require 'test/unit'
require_relative '../leetcode/885_Boats_to_Save_People'
class BoatsToSavePeopleTest < Test::Unit::TestCase
  def setup
    @people = [1, 2, 3, 4, 5]
    @limit = 5
    @boats = BoatsToSavePeople.new
  end

  def test_solution
    sol = @boats.solution(@people, @limit)
    assert_equal sol, 3
  end
end
