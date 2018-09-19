# Leetcode 202
class HappyNumber
  def happy?(n)
    set = Set.new
    until set.include?(n)
      set.add(n)
      return true if n == 1
      sum = 0
      n.to_s.split('').each do |num|
        num = num.to_i
        sum += num * num
      end
      n = sum
      puts n
    end
    false
  end
end
