class Sorting
  def bubble_sort(arr)
    n = arr.length
    (n - 1).times do
      (0...n - 1).each do |i|
        if arr[i] > arr[i + 1]
          arr[i], arr[i + 1] = arr[i + 1], arr[i] # Swap
        end
      end
    end
    arr
  end

  
  def selection_sort(arr)
    n = arr.length
    (0...n).each do |i|
      min_index = i
      (i + 1...n).each do |j|
        min_index = j if arr[j] < arr[min_index]
      end
      arr[i], arr[min_index] = arr[min_index], arr[i] # Swap
    end
    arr
  end
  def insertion_sort(arr)
    (1...arr.length).each do |i|
      key = arr[i]
      j = i - 1
      while j >= 0 && arr[j] > key
        arr[j + 1] = arr[j]
        j -= 1
      end
      arr[j + 1] = key
    end
    arr
  end
  def merge_sort(arr)
    return arr if arr.length <= 1
  
    mid = arr.length / 2
    left = merge_sort(arr[0...mid])
    right = merge_sort(arr[mid..])
  
    merge(left, right)
  end
  
  def merge(left, right)
    sorted = []
    until left.empty? || right.empty?
      if left.first <= right.first
        sorted << left.shift
      else
        sorted << right.shift
      end
    end
    sorted + left + right
  end
  def quick_sort(arr)
    return arr if arr.length <= 1
  
    pivot = arr.delete_at(arr.length / 2)
    left, right = arr.partition { |x| x <= pivot }
  
    quick_sort(left) + [pivot] + quick_sort(right)
  end
  
  
  
  
  

end
