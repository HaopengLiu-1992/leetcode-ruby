# Leetcode 287
class FindTheDuplicateNumber
  def find_duplicate(nums)
    (0...nums.length).each do |index|
      while nums[index] != index + 1
        return nums[index] if nums[nums[index] - 1] == nums[index]
        temp = nums[nums[index] - 1]
        nums[nums[index] - 1] = nums[index]
        nums[index] = temp
      end
    end
  end
end
