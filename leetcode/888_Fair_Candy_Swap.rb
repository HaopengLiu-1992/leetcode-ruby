# Leetcode 888
class FairCandySwap
  # @param {Integer[]} a
  # @param {Integer[]} b
  # @return {Integer[]}
  def fair_candy_swap(a, b)
    sum_a = 0
    a.each { |num| sum_a += num }
    sum_b = 0
    b.each { |num| sum_b += num }
    delta = (sum_b - sum_a) / 2
    set_b = b.to_set
    a.each do |num|
      return [num, num + delta] if set_b.include?(num + delta)
    end
  end
end
