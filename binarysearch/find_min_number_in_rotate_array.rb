
# Example 1:
# Input Format: arr = [4,5,6,7,0,1,2,3]
# Result: 0

# Algo

# We will declare the ‘ans’ variable and initialize it with the largest value possible. With that, as usual, we will declare 2 pointers i.e. low and high.

# Place the 2 pointers i.e. low and high: Initially, we will place the pointers like this: low will point to the first index and high will point to the last index.
# Calculate the ‘mid’: Now, inside a loop, we will calculate the value of ‘mid’ using the following formula:
# mid = (low+high) // 2 ( ‘//’ refers to integer division)
# Identify the sorted half, and after picking the leftmost element, eliminate that half.
# If arr[low] <= arr[mid]: This condition ensures that the left part is sorted. So, we will pick the leftmost element i.e. arr[low]. Now, we will compare it with 'ans' and update 'ans' with the smaller value (i.e., min(ans, arr[low])). Now, we will eliminate this left half(i.e. low = mid+1).
# Otherwise, if the right half is sorted:  This condition ensures that the right half is sorted. So, we will pick the leftmost element i.e. arr[mid]. Now, we will compare it with 'ans' and update 'ans' with the smaller value (i.e., min(ans, arr[mid])). Now, we will eliminate this right half(i.e. high = mid-1).
# This process will be inside a loop and the loop will continue until low crosses high. Finally, we will return the ‘ans’ variable that stores the minimum element.

def find_min(nums)
  left = 0
  right = 0
  ans = nums[0]
  while left <= right
    mid = left + (right - left) / 2
    if nums[left] <= nums[mid]
      ans = nums[left] if nums[left] < ans
      left = mid + 1
    else
      ans = nums[mid] if nums[mid] < ans
      high = mid - 1
    end
  end
  ans
end


p "Find min in array------>#{find_min([4,5,6,7,0,1,2,3])}"