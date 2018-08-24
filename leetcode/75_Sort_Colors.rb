# Leetcode 75
class SortColors
  # @param {Integer[]} nums
  # @return {Void} Do not return anything, modify nums in-place instead.
  def sort_colors(nums)
    p = 0
    (0...nums.length).each do |i|
      if (nums[i]).zero?
        nums[i] = nums[p]
        nums[p] = 0
        p += 1
      end
    end
    (p...nums.length).each do |i|
      if nums[i] == 1
        nums[i] = nums[p]
        nums[p] = 1
        p += 1
      end
    end
  end
end

# test
test = SortColors.new
arr = [2, 0, 2, 1, 1, 0]
test.sort_colors(arr)
puts arr.join(' ')
