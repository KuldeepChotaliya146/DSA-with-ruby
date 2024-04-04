# Given an array, print all the elements which are leaders. A Leader is an element that is greater than all of the elements on its right side in the array.

# Example 1:
# Input:

#  arr = [4, 7, 1, 0]
# Output
# :
#  7 1 0
# Explanation:

#  Rightmost element is always a leader. 7 and 1 are greater than the elements in their right side.

# Example 2:
# Input:

#  arr = [10, 22, 12, 3, 0, 6]
# Output:

#  22 12 6
# Explanation:

#  6 is a leader. In addition to that, 12 is greater than all the elements in its right side (3, 0, 6), also 22 is greater than 12, 3, 0, 6.44

# iterate from starting and find maximum element from remaining part of the array.
# def leaders_in_array(arr)
#   ans = []
#   for i in (0..arr.size - 1)
#     largest = find_largest(arr[i..arr.size - 1])
#     ans << largest unless ans.include?(largest)
#   end
#   ans
# end

# def find_largest(arr)
#   largest = arr[0]
#   for i in (0..arr.size - 1)
#     largest = arr[i] if arr[i] > largest
#   end
#   largest
# end

def leaders_in_array(arr)
  max = arr[arr.size - 1]
  max_index = arr.size - 1
  ans = []
  ans.push(max) # last element is always leader
  while max_index > 0
    if arr[max_index] > max
      ans << arr[max_index]
      max = arr[max_index]
    end
    max_index -= 1
  end
  ans
end


p "Leaders in array---->#{leaders_in_array([10, 22, 12, 3, 0, 6])}"