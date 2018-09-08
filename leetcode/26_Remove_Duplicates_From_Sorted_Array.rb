# Leetcode 867
class RemoveDuplicatesFromSortedArray
  # @param {Integer[]} nums
  # @return {Integer}
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

# test
test = RemoveDuplicatesFromSortedArray.new
arr = [1, 1, 2]
puts test.remove_duplicates(arr)
puts arr.join(' ')
