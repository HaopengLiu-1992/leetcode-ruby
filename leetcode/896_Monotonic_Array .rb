# Leetcode 896
class MonotonicArray
  # @param {Integer[]} a
  # @return {Boolean}
  def monotonic?(a)
    return true if a.length < 3
    flag = cal_flag(a[1], a[0])
    (2...a.length).each do |i|
      cur = cal_flag(a[i], a[i - 1])
      return false unless check_flag(flag, cur)
      flag = cur if cur != 0
    end
    true
  end

  def cal_flag(a, b)
    return 1 if (a - b).positive?
    return 0 if (a - b).zero?
    -1
  end

  def check_flag(f1, f2)
    return true if (f1 >= 0 && f2 >= 0) || (f1 <= 0 && f2 <= 0)
    false
  end
end
