# Dutch national algorithm

# brute force - sort using any sorting algo
# better approach use counting or hashing

# The problem was posed with three colors, here `0′, `1′ and `2′. The array is divided into four sections: 
# arr[1] to arr[low – 1]
# arr[low] to arr[mid – 1]
# arr[mid] to arr[high – 1]
# arr[high] to arr[n]
# If the ith element is 0 then swap the element to the low range.
# Similarly, if the element is 1 then keep it as it is.
# If the element is 2 then swap it with an element in high range.

# Three posible cases

# 1 arr[mid] = 0 then swap low and mid and increment the mid and low by 1
# 2 arr[mid] = 1 then increment mid by 1
# 3 arr[mid] = 2 then swap mid and high and decrement the high by 1

def sort_0_and_1(arr)
  low = 0
  mid = 0
  high = arr.size - 1
  while mid <= high
    if arr[mid] == 0
      arr[low], arr[mid] = arr[mid], arr[low]
      low += 1
      mid += 1
    elsif arr[mid] == 1
      mid += 1
    elsif arr[mid] == 2
      arr[mid], arr[high] = arr[high], arr[mid]
      high -= 1
    end
  end
  arr
end


p "sort 0 and 1 using dutch national algo--->#{sort_0_and_1([0,1,2,1,1,0,2,0,1,0,2,2,0,1])}"