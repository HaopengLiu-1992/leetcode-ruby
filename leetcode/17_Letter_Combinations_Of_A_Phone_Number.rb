# Leetcode 17
class LetterCombinationsOfAPhoneNumber
  def letter_combinations(digits)
    return [] if digits.include?('0') || digits.include?('1') || digits.empty?
    decode = ['', '', 'abc', 'def', 'ghi', 'jkl', 'mno', 'pqrs', 'tuv', 'wxyz']
    arr = ['']
    backtrack(digits, 0, arr, decode)
  end

  def backtrack(digits, i, arr, decode)
    return arr if i == digits.length
    nxt = []
    arr.each do |prev|
      decode[digits[i].to_i].chars.each do |letter|
        nxt << prev + letter
      end
    end
    arr = nxt
    backtrack(digits, i + 1, arr, decode)
  end
end
