# Leetcode 942
class DIStringMatch
  def di_string_match(s)
    i = 0
    j = s.length
    res = []
    s.each_char do |c|
      if c == 'I'
        res << i
        i += 1
      else
        res << j
        j -= 1
      end
    end
    res << i
    res
  end
end
