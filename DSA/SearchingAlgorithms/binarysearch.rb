def find_first(nums, target)
  left, right = 0, nums.length - 1
  result = -1
  while left <= right
    mid = (left + right) / 2
    if nums[mid] == target
      result = mid
      right = mid - 1 
    elsif nums[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end
  result
end
def find_last(nums, target)
  left, right = 0, nums.length - 1
  result = -1
  while left <= right
    mid = (left + right) / 2
    if nums[mid] == target
      result = mid
      left = mid + 1
    elsif nums[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end
  result
end
def find (array , target)
  first_index= find_first(array , target)
  last_index = find_last(array , target)
  puts "FIRST INDEX => #{first_index} , LAST INDEX => #{last_index}"
end

array = [1,2,3,4,4,4,4,4,5,6,7,8]
find(array , 4)

