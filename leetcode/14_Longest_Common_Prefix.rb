# Leetcode 14
class LongestCommonPrefix
  # @param {String[]} strs
  # @return {String}
  def longest_common_prefix(strs)
    prefix = ''
    return prefix if strs.nil? || strs.empty?
    (1..strs[0].length).each do |i|
      next_prefix = prefix + strs[0][i - 1]
      strs.each do |str|
        return prefix if str[0, i] != next_prefix
      end
      prefix = next_prefix
    end
    prefix
  end
end
