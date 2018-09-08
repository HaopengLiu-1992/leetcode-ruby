# Leetcode 28
class ImplementStrStr
  def str_str(haystack, needle)
    return -1 if needle.length > haystack.length
    return 0 if needle.empty? || needle == haystack
    (0...haystack.length).each do |i|
      return i if haystack[i, needle.length] == needle
    end
    -1
  end
end
