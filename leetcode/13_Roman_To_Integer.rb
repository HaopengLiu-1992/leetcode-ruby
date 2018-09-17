# Leetcode 13
class RomanToInteger
  def roman_to_int(s)
    map = { 'I' => 1, 'V' => 5, 'X' => 10, 'L' => 50, 'C' => 100, 'D' => 500, 'M' => 1000 }
    res = 0
    i = 0
    while i < s.length
      cur = map[s[i]]
      nxt = map[s[i + 1]]
      if !nxt.nil? && nxt > cur
        res += nxt - cur
        i += 2
      else
        res += cur
        i += 1
      end
    end
    res
  end
end
