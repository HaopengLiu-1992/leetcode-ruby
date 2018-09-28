# Leetcode 303
class NumArray
  def initialize(nums)
    @sum = [nums[0]]
    (1...nums.length).each { |i| @sum[i] = @sum[i - 1] + nums[i] }
    @arr = nums
  end

  def sum_range(i, j)
    @sum[j] - @sum[i] + @arr[i]
  end
end
