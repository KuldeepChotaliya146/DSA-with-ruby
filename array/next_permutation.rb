# Find next permutation of given array

def next_permutation(nums)
  max_index = nums.size - 1
  breaking_point_index = -1

  # iterate from the end find element's index which don't follow increasing property
  while max_index > 0
    if nums[max_index] > nums[max_index - 1]
      breaking_point_index = max_index - 1
      break
    end
    max_index -= 1
  end

  # If we got breaking_point_index still -1 then it is the biggest possible permutation, so to get the next permutation, we just reverse it
  if breaking_point_index == -1
    return nums.reverse!
  end

  # iterate from the end find element which is just greater than breaking_point element and swap them
  max_index = nums.size - 1
  while max_index > breaking_point_index
    if nums[max_index] > nums[breaking_point_index]
      nums[max_index], nums[breaking_point_index] = nums[breaking_point_index], nums[max_index]
      break
    end
    max_index -= 1
  end

  # Reverse array from breaking_point_index to last index array
  left = breaking_point_index + 1
  right = nums.size - 1
  while left < right
    nums[left], nums[right] = nums[right], nums[left]
    left += 1
    right -= 1
  end
  nums
end

p "Next permutation of array: #{next_permutation([2,4,1,7,5,0])}"