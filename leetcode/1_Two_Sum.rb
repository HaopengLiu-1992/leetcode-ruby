class TwoSum
  def solution(nums, target)
    recorder = Hash.new
    nums.each_with_index do |num, i|
      return [recorder[target-num]].push(i) unless recorder[target-num].nil?
      recorder[num] = i
    end
  end
end