# We have to merge two sorted arrays without using extra space

def merge_arrays(arr1, arr2)
  left = arr1.size - 1
  right = 0
  while left >= 0 and right < arr2.size
    if arr1[left] > arr2[right]
      arr1[left], arr2[right] = arr2[right], arr1[left]
      left -= 1
      right += 1
    else
      break
    end
  end
  p "arr1--->#{arr1.sort!}"
  p "arr2--->#{arr2.sort!}"
end


p "merge two sorted arrays------>#{merge_arrays([2,6,8,9], [0,1,3,7])}"