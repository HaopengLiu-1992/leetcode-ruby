# Leetcode 121
class BestTimeToBuyAndSellStock
  def max_profit(prices)
    return 0 if prices.empty?
    min = prices[0]
    max = 0
    prices.each do |price|
      if min > price
        min = price
      else
        max = [max, price - min].max
      end
    end
    max
  end
end
