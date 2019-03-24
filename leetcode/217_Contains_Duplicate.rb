# Leetcode 217
class ContainsDuplicate
  def contains_duplicate(nums)
    count_set = Set.new
    nums.each do |num|
      return true if count_set.include?(num)
      count_set.add(num)
    end
    false
  end
end
