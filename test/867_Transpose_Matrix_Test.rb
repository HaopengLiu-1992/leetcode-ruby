require 'test/unit'
require_relative '../leetcode/867_Transpose_Matrix'
class TransposeMatrixTest < Test::Unit::TestCase
  def setup
    @a = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]
    @tp = TransposeMatrix.new
  end

  def test_solution
    check = @tp.transpose(@a)
    assert_equal [[1, 4, 7], [2, 5, 8], [3, 6, 9]], check
  end
end
