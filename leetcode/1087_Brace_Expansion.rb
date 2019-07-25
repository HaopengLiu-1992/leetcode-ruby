# Leetcode 1087
class BraceExpansion
  def expand(s)
    if s.include?('{')
      arr = s.tr!('{', ' ').tr!('}', ' ').split(' ')
    else
      arr = [s]
    end
    nest_arr = []
    arr.each do |str|
      str.length > 1 ? nest_arr << str.split(',').sort : nest_arr << str
    end
    @res = []
    backtrack(nest_arr, 0, '')
    @res
  end

  def backtrack(nest_arr, i, cur)
    @res << cur if i == nest_arr.length
    element = nest_arr[i]
    if element.is_a? String
      cur += element
      backtrack(nest_arr, i + 1, cur)
    elsif element.is_a? Array
      element.each do |c|
        cur += c
        backtrack(nest_arr, i + 1, cur)
        cur = cur[0..-2]
      end
    end
  end
end
