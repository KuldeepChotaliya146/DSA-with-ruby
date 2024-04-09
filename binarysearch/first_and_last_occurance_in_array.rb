# Given an array of integers nums sorted in non-decreasing order, find the starting and ending position of a given target value.

# If target is not found in the array, return [-1, -1].

# You must write an algorithm with O(log n) runtime complexity.

# Input: nums = [5,7,7,8,8,10], target = 8
# Output: [3,4]
nums = [5,7,7,8,8,10]

def first_occurance(nums, target)
  left = 0
  right = nums.size - 1
  ans = -1
  while left <= right
    mid = left + (right - left) / 2
    if nums[mid] == target
      ans = mid
      right = mid - 1
    elsif nums[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end
  ans
end

def last_occurance(nums, target)
  left = 0
  right = nums.size - 1
  ans = -1
  while left <= right
    mid = left + (right - left) / 2
    if nums[mid] == target
      ans = mid
      left = mid + 1
    elsif nums[mid] < target
      left = mid + 1
    else
      right = mid - 1
    end
  end
  ans
end

first = first_occurance([5,7,7,8,8,10], 8)
last = last_occurance([5,7,7,8,8,10], 8)

p "first and last occurance of 8 in #{nums} is at #{[first, last]}"