require 'test/unit'
require_relative '../leetcode/561_Array_Partition_I'
class ArrayPartitionITest < Test::Unit::TestCase
  def setup
    @partition = ArrayPartitionI.new
    @arr = [1, 2, 3, 4]
  end

  def test_solution
    assert_equal @partition.array_pair_sum(@arr), 4
  end
end
