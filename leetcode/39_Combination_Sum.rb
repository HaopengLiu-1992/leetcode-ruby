# Leetcode 39
class CombinationSum
  def combination_sum(candidates, target)
    candidates.sort!
    @res = []
    backtrack([], 0, target, candidates, 0)
    @res
  end

  def backtrack(cur, sum, target, arr, index)
    if target == sum
      @res << Array.new(cur)
      return
    end
    return if target < sum
    (index...arr.length).each do |i|
      cur << arr[i]
      sum += arr[i]
      backtrack(cur, sum, target, arr, i) if sum <= target
      cur.pop
      sum -= arr[i]
    end
  end
end
