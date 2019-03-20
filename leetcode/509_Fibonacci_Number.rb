# Leetcode 509
class FibonacciNumber
  def fib(n)
    return n if n < 2
    a = 0
    b = 1
    sum = a + b
    (n - 1).times do
      b = a
      a = sum
      sum = a + b
    end
    sum
  end
end
