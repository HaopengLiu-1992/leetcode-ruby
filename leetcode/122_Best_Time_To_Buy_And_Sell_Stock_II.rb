# Leetcode 122
class BestTimeToBuyAndSellStockII
  def max_profit(prices)
    return 0 if prices.length < 2
    min = prices[0]
    total = 0
    (1...prices.length).each do |i|
      if prices[i] <= prices[i - 1]
        total += prices[i - 1] - min
      else
        total += prices[i] - min
      end
      min = prices[i]
    end
    total
  end
end
