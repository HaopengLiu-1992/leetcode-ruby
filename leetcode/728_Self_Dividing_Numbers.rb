# Leetcode 728
class SelfDividingNumbers
  def self_dividing_numbers(left, right)
    res = []
    (left..right).each { |num| res << num if self_dividing?(num) }
    res
  end

  def self_dividing?(num)
    num.to_s.each_char do |s|
      digit = s.to_i
      return false if digit.zero? || num % digit != 0
    end
    true
  end
end
