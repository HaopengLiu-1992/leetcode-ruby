# Leetcode 20
class ValidParentheses
  # @param {String} s
  # @return {Boolean}
  def valid?(s)
    stack = []
    s.each_char do |c|
      if c == ')'
        return false if stack.empty? || stack.pop != '('
      elsif c == ']'
        return false if stack.empty? || stack.pop != '['
      elsif c == '}'
        return false if stack.empty? || stack.pop != '{'
      else
        stack.push(c)
      end
    end
    stack.empty?
  end
end
