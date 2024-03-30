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

# Move zeros to end in array

# first find index of first zero. then iterate from first_zero_index + 1 to arr.size - 1

def move_zeros(arr)
  first_zero_index = -1

  for i in (0..arr.size - 1)
    if arr[i] == 0
      first_zero_index = i
      break
    end
  end

  for i in (first_zero_index+1..arr.size - 1)
    if arr[i] != 0
      arr[i], arr[first_zero_index] = arr[first_zero_index], arr[i]
      first_zero_index+=1
    end
  end
  arr
end

p "Move zeros to end---->#{move_zeros([1,2,4,7,80,0,2,7,0,0,0,45,7])}"


# Find missing number in array

def find_missing_num(arr, size)
  for i in (1..size)
    found = 0
    for j in arr
      if (i == j)
        found = 1
        break
      end
    end
    return i if (found == 0)
  end
end

p "Find missing number--->#{find_missing_num([1,2,3,4], 5)}"

# Maximum counsecutive 1 in array

def counsecutive_ones(arr)
  maximum = 0
  count = 0
  for i in arr
    if i == 1
      count += 1
      maximum = count
    else
      count = 0
    end
  end
  maximum
end

p "maximum counsecutive 1 in array---->#{counsecutive_ones([0,1,1,1,0,1,1,0,1,0,1,1,1,1,1])}"

# Find the number who appears once, and others twice

def find_numbers_only_once(arr)
  hash = Hash.new(0)
  for i in arr
    hash[i] += 1
  end
  for k,v in hash
    return k if v == 1
  end
end

p "Find the number who appears once, and others twice-----> #{find_numbers_only_once([1,2,3,3,4,2,4])}"