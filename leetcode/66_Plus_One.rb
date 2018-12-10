# Leetcode 66
class PlusOne
  def plus_one(digits)
    flag = 1
    res = []
    digits.reverse_each do |num|
      cur = num + flag
      flag = cur / 10
      cur = cur % 10
      res.unshift(cur)
    end
    res.unshift(flag) if flag.positive?
    res
  end
end
