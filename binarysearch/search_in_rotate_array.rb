# Given an integer array arr of size N, sorted in ascending order (with distinct values) and a target value k. Now the array is rotated at some pivot point unknown to you. Find the index at which k is present and if k is not present return -1.


# Example 1:
# Input Format: arr = [4,5,6,7,0,1,2,3], k = 0
# Result: 4
# Explanation: Here, the target is 0. We can see that 0 is present in the given rotated sorted array, nums. Thus, we get output as 4, which is the index at which 0 is present in the array.

#Algo

# Place the 2 pointers i.e. low and high: Initially, we will place the pointers like this: low will point to the first index, and high will point to the last index.
# Calculate the ‘mid’: Now, inside a loop, we will calculate the value of ‘mid’ using the following formula:
# mid = (low+high) // 2 ( ‘//’ refers to integer division)
# Check if arr[mid] == target: If it is, return the index mid.
# Identify the sorted half, check where the target is located, and then eliminate one half accordingly:
# If arr[low] <= arr[mid]: This condition ensures that the left part is sorted.
# If arr[low] <= target && target <= arr[mid]: It signifies that the target is in this sorted half. So, we will eliminate the right half (high = mid-1).
# Otherwise, the target does not exist in the sorted half. So, we will eliminate this left half by doing low = mid+1.
# Otherwise, if the right half is sorted:
# If arr[mid] <= target && target <= arr[high]: It signifies that the target is in this sorted right half. So, we will eliminate the left half (low = mid+1).
# Otherwise, the target does not exist in this sorted half. So, we will eliminate this right half by doing high = mid-1.
# Once, the ‘mid’ points to the target, the index will be returned.
# This process will be inside a loop and the loop will continue until low crosses high. If no index is found, we will return -1.

def search(nums, target)
  low = 0
  high = nums.size - 1
  while low <= high
    mid = low + (high - low) / 2
    return mid if nums[mid] == target

    if nums[low] <= nums[mid]
      if nums[low] <= target && target <= nums[mid]
        high = mid - 1
      else
        low = mid + 1
      end
    else
      if nums[mid] <= target && target <= nums[high]
        low = mid + 1
      else
        high = mid - 1
      end
    end
  end
  return -1
end

p "search in rotate array--->#{search([4,5,6,7,0,1,2,3], 0)}"