def quickSort(arr, k)
  return nil if arr.empty? || k > arr.length || k <= 0

  pivot = arr.delete_at(arr.length / 2)
  left, right = arr.partition { |x| x > pivot }

  if left.length == k - 1
    pivot
  elsif left.length >= k
    quickSort(left, k)
  else
    quickSort(right, k - left.length - 1)
  end
end


array1 = [4, 2, 7, 1, 9]
k = 2
puts quickSort(array1, k)