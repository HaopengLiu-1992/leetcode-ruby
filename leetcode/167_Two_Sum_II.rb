# Leetcode 167
class Two_Sum_II
  # @param {Integer[]} numbers
  # @param {Integer} target
  # @return {Integer[]}
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

# test
test = Two_Sum_II.new
puts test.two_sum([2, 7, 11, 15], 9)
