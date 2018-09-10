# Leetcode 901
class OnlineStockSpan
  def initialize
    @arr = []
  end

  def next(price)
    res = 1
    res += @arr.pop[1] while !@arr.empty? && @arr.last[0] <= price
    @arr << [price, res]
    res
  end
end
