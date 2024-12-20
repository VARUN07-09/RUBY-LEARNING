class Searching
  def LinearSearch(array, target)
    array.each_with_index do |element, index|
      return index if element == target
    end
    return -1
  end
  def binarySearch(array, target)
    first=0
    last=array.length-1 
    while first <= last 
      mid=(first+last)/2
      if array[mid] == target 
        return mid 
      elsif target>array[mid] 
        first=mid+1
      else
        last= mid-1
      end
    end
    return -1
  end
  

end


search = Searching.new

array = [1, 2, 3, 5, 8, 9, 6]
puts search.LinearSearch(array, 5)
array2=[11,21,31,41,51,96]
puts search.binarySearch(array2 , 11)

array3=[9,8,7,6,5,4,3,2,1]
puts array3.find_index(1)