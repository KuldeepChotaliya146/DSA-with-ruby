# Brute Force:- Find all sub array and return sum of subarray who have highest sum.

def max_subarray_sum(arr)
  max_current = max_global = arr[0]
  for i in (0..arr.size - 1)
    max_current = [arr[i], max_current + arr[i]].max
    # Update the global maximum if the maximum sum ending at the current element is greater
    max_global = [max_global, max_current].max
  end
  max_global
end

p "max subarray sum----->#{max_subarray_sum([-2,-3,4,-1,-2,1,5,-3])}"