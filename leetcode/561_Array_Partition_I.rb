# Leetcode 561
class ArrayPartitionI
  def array_pair_sum(nums)
    nums = nums.sort
    sum = 0
    (0..nums.length - 1).step(2).each { |i| sum += nums[i] }
    sum
  end
end
