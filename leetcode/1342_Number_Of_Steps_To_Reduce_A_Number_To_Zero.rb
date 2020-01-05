# Leetcode 1342
class NumberOfStepsToReduceANumberToZero
  def number_of_steps(num)
    count = 0
    while num > 1
      count += 1 + num % 2
      num /= 2
    end
    count + 1
  end
end
