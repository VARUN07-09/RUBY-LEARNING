def find_peak_element(nums)
  left, right = 0, nums.length - 1

  while left < right
    mid = (left + right) / 2
    if nums[mid] > nums[mid + 1]
      
      right = mid
    else
     
      left = mid + 1
    end
  end

  
  left
end


nums = [1, 2, 3, 4, 3, 4 ]
puts find_peak_element(nums) 
