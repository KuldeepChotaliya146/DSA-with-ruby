

# binary search
arr = [1,2,4,5,6,7,16,67,78,87,90,100]

def binary_search(array, key)
  first = 0
  last = array.size - 1
  while first <= last
    mid = first + (last - first) / 2
    if array[mid] == key
      return mid
    elsif array[mid] < key
      first = mid + 1
    else
      last = mid - 1
    end
  end
  return -1
end

puts "Found element at #{binary_search(arr, 6)}"
