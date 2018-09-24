# Leetcode 909
class SmallestRangeI
  def smallest_range_i(a, k)
    max = a[0]
    min = a[0]
    a.each do |num|
      max = num if num > max
      min = num if num < min
    end
    return 0 if max - min < k * 2
    max - min - k * 2
  end
end
