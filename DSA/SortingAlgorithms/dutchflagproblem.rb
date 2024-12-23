def sort_array (array)
  low =0
  mid = 0
  high =array.length-1
  while mid<=high 
    if array[mid]==0
      array[low] , array[mid] = array[mid] , array[low]
      
      low+=1
      mid+=1
    elsif array[mid]==1
      mid+=1
    else 
      array[high] , array[mid] = array[mid] , array[high]
      
      high-=1
    end
  end
  array
end
arr=[2,1,2,1,2,1,0,0,0,0,1,2,2,1]
puts sort_array(arr).inspect