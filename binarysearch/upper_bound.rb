# Given a sorted array of N integers and an integer x, write a program to find the upper bound of x.

# What is Upper Bound?
# The upper bound algorithm finds the first or the smallest index in a sorted array where the value at that index is greater than the given key i.e. x.

# The upper bound is the smallest index, ind, where arr[ind] > x.

# But if any such index is not found, the upper bound algorithm returns n i.e. size of the given array. The main difference between the lower and upper bound is in the condition. For the lower bound the condition was arr[ind] >= x and here, in the case of the upper bound, it is arr[ind] > x.

# Example 1:
# Input Format:
#  N = 4, arr[] = {1,2,2,3}, x = 2
# Result:
#  3
# Explanation:
#  Index 3 is the smallest index such that arr[3] > x.

# Example 2:
# Input Format:
#  N = 6, arr[] = {3,5,8,9,15,19}, x = 9
# Result:
#  4
# Explanation:
#  Index 4 is the smallest index such that arr[4] > x.

def find_uper_bound(arr, target)
  low = 0
  high = arr.size - 1
  ans = -1
  while low <= high
    mid = low + (high - low) / 2
    if arr[mid] > target
      ans = mid
      high -= 1
    else
      low += 1
    end 
  end
  ans
end

p "Find Uper bound ----->#{find_uper_bound([3,5,8,9,15,19], 9)}"