# Leetcode 118
class PascalTriangle
  def generate(num_rows)
    return [] if num_rows < 1
    init = []
    prev = [1]
    while num_rows.positive?
      init << prev
      num_rows -= 1
      cur = [1]
      (0...prev.length).each { |i| cur << prev[i] + prev[i + 1] if i + 1 < prev.length }
      cur << 1
      prev = cur
    end
    init
  end
end
