require 'test/unit'
require '../leetcode/1_Two_Sum'
class TwoSumTest < Test::Unit::TestCase
  setup do
    @test_arrays = [[1,2,3],[3,4,2]]
    @test_targets = [3,7]
    @test_results = [[0,1], [0,1]]
    @two_sum = TwoSum.new
  end

  def test
    (0..1).each do |i|
      put "hello"
      assert_equal( @two_sum.solution(@test_arrays[i], @test_targets[i]), @test_results[i] )
    end
  end
end