# Leetcode 27
class RemoveElement
  def remove_element(nums, val)
    return 0 if nums.empty?
    i = 0
    j = nums.length - 1
    while i < j
      j -= 1 while nums[j] == val && i < j
      if nums[i] == val && i < j
        temp = nums[i]
        nums[i] = nums[j]
        nums[j] = temp
        i += 1
        j -= 1
      elsif i < j
        i += 1
      end
    end
    nums[i] == val ? i : i + 1
  end
end
