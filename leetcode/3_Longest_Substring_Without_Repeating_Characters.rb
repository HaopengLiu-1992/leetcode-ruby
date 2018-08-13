# @param {String} str
# @return {Integer}
class LengthOfLongestSubString
  def solution(str)
    return 0 if str.empty?
    recorder = {}
    size = 0
    (0..str.length - 1).each do |i|
      if recorder.include?(str[i])
        size = recorder.size if size < recorder.size
        index = recorder[str[i]]
        recorder.delete_if { |_k, v| v < index }
      end
      recorder[str[i]] = i
    end
    size = recorder.size if size < recorder.size
    size
  end
end
