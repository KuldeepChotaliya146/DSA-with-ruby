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

def remove_duplicate(arr)
  i = 0
  for j in (i+1)..(arr.size - 1)
    if arr[i] != arr[j]
      arr[i+1] = arr[j]
      i = i + 1
    end
  end
  return i + 1
end

p "remove duplicate from array---->#{remove_duplicate([12,12,13,13,14])}"

# left rotate the array by 1 place

def left_rotate_by_1(arr)
  temp = arr[0]
  for i in (1..arr.size - 1)
    arr[i - 1] = arr[i]
  end
  arr[arr.size - 1] = temp
  arr
end

p "left rotate array by 1 place--->#{left_rotate_by_1([1,2,4,5,2,6,7])}"

# left rotate the array by D places

def left_rotate(arr, d)
  d = d % arr.size
  while d > 0
    left_rotate_by_1(arr)
    d = d - 1
  end
  arr
end

p "left rotate array by D place--->#{left_rotate([1,2,4,5,2,6,7], 4)}"

# right rotate array by 1 place

def right_rotate_by_1(arr)
  temp = arr[-1]
  index = arr.size - 1
  while index >= 1
    arr[index] = arr[index - 1]
    index -= 1
  end
  arr[0] = temp
  arr
end

p "right rotate array by 1 place--->#{right_rotate_by_1([1,2,4,5,2,6,7])}"

# right rotate by D places

def right_rotate(arr, d)
  d = d % arr.size
  while d > 0
    right_rotate_by_1(arr)
    d = d - 1
  end
  arr
end

p "right rotate array by D place--->#{right_rotate([1,2,4,5,2,6,7], 3)}"