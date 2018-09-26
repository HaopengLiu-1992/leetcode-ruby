# Leetcode 256
class PaintHouse
  def min_cost(costs)
    return 0 if costs.empty?
    res = costs.shift
    costs.each do |cost|
      next_res = []
      next_res[0] = cost[0] + [res[1], res[2]].min
      next_res[1] = cost[1] + [res[0], res[2]].min
      next_res[2] = cost[2] + [res[0], res[1]].min
      res = next_res
    end
    res.min
  end
end
