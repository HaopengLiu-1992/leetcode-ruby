# Leetcode 70
class ClimbingStairs
  def climb_stairs(n)
    return 0 if n <= 0
    climb = Array.new(n + 1)
    climb[0] = 1
    climb[1] = 1
    (2..n).each do |i|
      climb[i] = climb[i - 1] + climb[i - 2]
    end
    climb[n]
  end
end
