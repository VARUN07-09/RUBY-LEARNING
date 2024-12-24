def merge_sorted_arrays(arr1, arr2)
  m, n = arr1.length, arr2.length
  i, j = 0, 0

  while i < m
    if arr1[i] > arr2[j]
      
      arr1[i], arr2[j] = arr2[j], arr1[i]
      
      arr2.sort!
    end
    i += 1
  end
  arr1 + arr2
end


arr1 = [1, 3, 5]
arr2 = [2, 4, 6]
puts merge_sorted_arrays(arr1, arr2).inspect