# Leetcode 26
class RemoveDuplicatesFromSortedArray
  def remove_duplicates(nums)
    return nums.length if nums.length < 2
    p = 1
    val = nums[0]
    (1...nums.length).each do |i|
      if val != nums[i]
        val = nums[i]
        temp = nums[p]
        nums[p] = nums[i]
        nums[i] = temp
        p += 1
      end
    end
    p
  end
end
