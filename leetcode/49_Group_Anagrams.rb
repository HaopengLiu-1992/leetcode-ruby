# Leetcode 49
class GroupAnagrams
  def group_anagrams(strs)
    store = {}
    strs.each do |str|
      key = Array.new(26, 0)
      str.chars do |char|
        val = char.ord - 'a'.ord
        key[val] += 1
      end
      store[key] = [] unless store.key?(key)
      store[key] << str
    end
    res = []
    store.each_value { |val| res << val }
    res
  end
end
