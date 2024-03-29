# larget number in array without sorting

def find_largest(arr)
  largest = arr[0]
  arr.each do |ele|
    largest = ele if largest < ele
  end
  largest
end

# You can also do this solution using first sort the array return arr[-1]

p "find larget number in array--->#{find_largest([2,36,4,6,4,32,63,9,23])}"

# second largest number in array without sorting

def second_largest(arr)
  largest = arr[0]
  second_largest = arr[0]
  arr.each do |ele|
    if ele > largest
      second_largest = largest
      largest = ele
    end
  end
  second_largest
end

# You can also do this solution first sort the array and find the largest element then iterate the array in reverse order find first element who is lesser than largest.

p "find second larget number in array--->#{second_largest([2,36,4,6,4,32,63,9,23])}"

# Check array is sorted or not

def is_sorted?(arr)
  (arr.size - 1).times  do |i|
    if arr[i] <= arr[i + 1]
    else
      return false
    end
  end
  return true
end

p "check array is sorted or not---->#{is_sorted?([12,12,13,13,14])}"

# Remove duplicates from the sorted array
