class MajorityElement
  def majority_element(nums)
    count = 0
    target = nums[0]
    nums.each do |num|
      if num == target
        count += 1
      else
        count -= 1
        if count < 0
          target = num
          count = 1
        end
      end
    end
    target
  end
end