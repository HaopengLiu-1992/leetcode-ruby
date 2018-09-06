# Leetcode 9
class PalindromeNumber
  # @param {Integer}
  # @return {Boolean}
  def palindrome?(x)
    return false if x.negative?
    i = 0
    s = x.to_s
    j = s.length - 1
    while i < j
      return false if s[i] != s[j]
      i += 1
      j -= 1
    end
    true
  end
end
