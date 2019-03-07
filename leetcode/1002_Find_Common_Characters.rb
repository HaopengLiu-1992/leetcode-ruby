# Leetcode 1002
class FindCommonCharacters
  def common_chars(a)
    check = word_to_ch_array(a[0])
    a.each do |word|
      cur = word_to_ch_array(word)
      (0...26).each { |i| check[i] = [check[i], cur[i]].min }
    end
    result = []
    (0...26).each { |i| check[i].times { result << (i + 'a'.ord).chr } }
    result
  end

  def word_to_ch_array(word)
    ch_array = Array.new(26, 0)
    word.chars.each { |ch| ch_array[ch.ord - 'a'.ord] = ch_array[ch.ord - 'a'.ord] + 1 }
    ch_array
  end
end
