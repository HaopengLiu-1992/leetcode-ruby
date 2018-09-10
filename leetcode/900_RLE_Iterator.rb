# Leetcode 900
class RLEIterator
  def initialize(a)
    @count = []
    @nums = []
    (0...a.length).each do |i|
      if i.even?
        @count << a[i]
      else
        @nums << a[i]
      end
    end
  end

  def next(n)
    cur = @count[0]
    while !cur.nil? && cur < n
      n -= cur
      @count.shift
      @nums.shift
      cur = @count[0]
    end
    return -1 if cur.nil?
    @count[0] = cur - n
    @nums[0]
  end
end
