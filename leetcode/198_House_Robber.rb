# Leetcode 198
class HouseRobber
  def rob(nums)
    return 0 if nums.empty?
    return nums[0] if nums.length == 1
    res = [nums[0], [nums[0], nums[1]].max]
    (2...nums.length).each do |i|
      res[i] = [res[i - 1], nums[i] + res[i - 2]].max
    end
    res.pop
  end
end
