# Leetcode 171
class ExcelSheetColumnNumber
  def title_to_number(s)
    return 0 if s.empty?
    t = 1
    sum = 0
    (s.length - 1).downto(0).each do |i|
      sum += translate(s[i]) * t
      t *= 26
    end
    sum
  end

  def translate(c)
    c.ord - 'A'.ord + 1
  end
end
