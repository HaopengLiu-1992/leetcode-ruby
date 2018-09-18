# Leetcode 349
class IntersectionOfTwoArrays
  def intersection(nums1, nums2)
    set = Set.new
    res = []
    nums1.each { |num1| set.add(num1) }
    nums2.each { |num2| res << num2 if set.include?(num2) && !res.include?(num2) }
    res
  end
end
