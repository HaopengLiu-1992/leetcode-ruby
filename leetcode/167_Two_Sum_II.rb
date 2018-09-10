# Leetcode 167
class TwoSumII
  def two_sum(numbers, target)
    i = 0
    j = numbers.length - 1
    while i < j
      if numbers[i] + numbers[j] > target
        j -= 1
      elsif numbers[i] + numbers[j] < target
        i += 1
      else
        return [i + 1, j + 1]
      end
    end
  end
end
