# Leetcode 860
class LemonadeChange
  # @param {Integer[]} bills
  # @return {Boolean}
  def lemonade_change(bills)
    five = 0
    ten = 0
    bills.each do |bill|
      five += 1 if bill == 5
      if bill == 10
        return false if five.zero?
        five -= 1
        ten += 1
      end
      if bill == 20
        if ten.positive? && five.positive?
          ten -= 1
          five -= 1
        elsif five >= 3
          five -= 3
        else
          return false
        end
      end
    end
    true
  end
end
