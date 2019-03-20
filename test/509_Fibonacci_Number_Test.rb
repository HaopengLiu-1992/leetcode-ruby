require 'test/unit'
require_relative '../leetcode/509_Fibonacci_Number'
class FibonacciNumberTest < Test::Unit::TestCase
  def setup
    @fib = FibonacciNumber.new
  end

  def test_solution
    assert_equal @fib.fib(5), 5
  end
end
