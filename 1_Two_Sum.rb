def two_sum(nums, target)
  recorder = Hash.new
  nums.each_with_index do |num, i|
    return [recorder[target-num]].push(i) unless recorder[target-num].nil?
    recorder[num] = i
  end
end

test = {[1,2,3]=>4, [3,4,2]=>6}

test.each do |key, value|
  puts two_sum(key, value)
end