# Leetcode 1119
class RemoveVowelsFromAString
  def remove_vowels(s)
    s.delete!('a')
    s.delete!('e')
    s.delete!('i')
    s.delete!('o')
    s.delete!('u')
    s
  end
end
