# Leetcode 746
class MinCostClimbingStairs
  def min_cost_climbing_stairs(cost)
    return 0 if cost.empty?
    res = Array.new(cost.length)
    res[0] = cost[0]
    res[1] = cost[1]
    (2...cost.length).each do |i|
      res[i] = [res[i - 1], res[i - 2]].min + cost[i]
    end
    [res[cost.length - 1], res[cost.length - 2]].min
  end
end