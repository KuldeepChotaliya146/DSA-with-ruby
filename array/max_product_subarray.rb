# Given an array that contains both negative and positive integers, find the maximum product subarray.

# Example 1:
# Input:

#  Nums = [1,2,3,4,5,0]
# Output:

#  120
# Explanation:

#  In the given array, we can see 1×2×3×4×5 gives maximum product value.


# Example 2:
# Input:
#  Nums = [1,2,-3,0,-4,-5]
# Output:

#  20
# Explanation:

# In the given array, we can see (-4)×(-5) gives maximum product value.

# brute force approach:-

def max_product_subarray(nums)
  max_product = nums[0]
  for i in (0..nums.size - 1)
    product = 1
    for j in (i..nums.size - 1)
      product *= nums[j]
      max_product = product if product > max_product
    end
  end
  max_product
end


p "max product subarray--->#{max_product_subarray([1,2,-3,0,-4,-5])}"