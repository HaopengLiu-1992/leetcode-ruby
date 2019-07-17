# Leetcode 216
class Combination_Sum_III
  def combination_sum3(k, n)
    @res = []
    backtracking([], 1, 0, k, n)
    @res
  end

  def backtracking(cur, i, sum, k, n)
    if sum == n && cur.length == k
      @res << Array.new(cur)
      return
    end
    return if sum > n && cur.length == k
    (i..9).each do |num|
      if sum + num <= n
        cur << num
        backtracking(cur, num + 1, sum + num, k, n)
        cur.pop
      end
    end
  end
end
