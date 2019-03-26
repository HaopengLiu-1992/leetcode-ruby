# Leetcode 387
class FirstUniqueCharacterInAString
  def first_uniq_char(s)
    check = {}
    s.chars.each do |char|
      if check.include?(char)
        check[char] = false
      else
        check[char] = true
      end
    end
    s.chars.each_with_index { |char, i| return i if check[char] }
    -1
  end
end
