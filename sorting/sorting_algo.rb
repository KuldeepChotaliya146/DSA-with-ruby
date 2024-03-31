# Bubble Sort

bubble_array = [34,54,232,675,14,78,45,8]

def bubble_sort(arr)
  is_sorted = true
  while is_sorted
    is_sorted = false
    (arr.size - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        is_sorted = true
      end
    end
  end
  arr
end

bubble_sort(bubble_array)

puts "bubble sorted array---->#{bubble_array}"

# Selection Sort

selection_array = [1212,61,42,6,32,68,7,3,4]

def selection_sort(arr)
  (arr.size - 1).times do |i|
    min_index = i
    for j in (i+1)..(arr.size - 1)
      min_index = j if arr[j] < arr[min_index]
    end
    arr[i], arr[min_index] = arr[min_index], arr[i]
  end
  arr
end

selection_sort(selection_array)

puts "selection sorted array---->#{selection_array}"

# merge sort

merge_arr = [1,6,3,83,8,4,84,22,85,4,9]

def merge_sort(arr)
  return arr if arr.size <= 1

  mid = arr.size / 2
  left = arr[0...mid]
  right = arr[mid...arr.size]

  left = merge_sort(left)
  right = merge_sort(right)

  merge(left, right)
end

def merge(left, right)
  result = []

  while left.size > 0 && right.size > 0
    if left[0] <= right[0]
      result << left.shift
    else
      result << right.shift
    end
  end

  while left.size > 0
    result << left.shift
  end

  while right.size > 0
    result << right.shift
  end

  result
end

puts "merge sort -------> #{merge_sort(merge_arr)}"

# quick sort

quick_arr = [3,5,6,2,4,6,7,4,6,7,8,3,2,6]

def quicksort(arr)
  return arr if arr.size <= 1

  # Pick the pivot element
  pivot = arr.last

  # Partition the array into two subarrays
  left = []
  right = []
  arr[0...arr.size - 1].each do |x|
    if x < pivot
      left << x
    else
      right << x
    end
  end

  # Recursively apply quicksort to the left and right subarrays
  return quicksort(left) + [pivot] + quicksort(right)
end

puts "quick sort----->#{quicksort(quick_arr)}"