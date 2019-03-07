# Leetcode 389
class FindTheDifference
  def find_the_difference(s, t)
    check_arr = Array.new(26, 0)
    s.each_char { |ch| check_arr[ch.ord - 'a'.ord] += 1 }
    t.each_char { |ch| check_arr[ch.ord - 'a'.ord] -= 1 }
    check_arr.each_with_index { |e, i| return (i + 'a'.ord).chr if e == -1 }
  end
end
