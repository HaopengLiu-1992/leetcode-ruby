# Leetcode 136
class SingleNumber
  def single_number(nums)
    set = Set.new
    nums.each { |num| set.include?(num) ? set.delete(num) : set.add(num) }
    set.first
  end
end
