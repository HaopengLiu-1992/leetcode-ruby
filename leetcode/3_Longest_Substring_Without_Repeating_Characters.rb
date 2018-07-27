# @param {String} s
# @return {Integer}
def length_of_longest_substring(s)
  return 0 if s.length==0
  recorder = Hash.new
  size = 0
  (0..s.length-1).each do |i|
    if recorder.include?(s[i])
      size = recorder.size if size < recorder.size
      index = recorder[s[i]]
      recorder.delete_if {|k, v| v < index}
    end
    recorder[s[i]] = i
  end
  size = recorder.size if size < recorder.size
  size
end