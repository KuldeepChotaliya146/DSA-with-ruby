# Given an integer array nums, return all the triplets [nums[i], nums[j], nums[k]] such that i != j, i != k, and j != k, and sum == 0.

# Notice that the solution set must not contain duplicate triplets.

def three_sum(nums)
  nums.sort!
  triplets = []
  for i in (0..nums.size - 1)
   next if i > 0 && nums[i] == nums[i-1] # Skip duplicates for i
   j = i + 1
   k = nums.size - 1
   while(j < k)
    sum = nums[i] + nums[j] + nums[k]
    if (sum == 0)
      triplets << [nums[i], nums[j], nums[k]]
      j += 1
      k -= 1
      j += 1 while j < k && nums[j] == nums[j-1]  # Skip duplicates for j
      k -= 1 while j < k && nums[k] == nums[k+1]  # Skip duplicates for k
    elsif (sum < 0)
      j += 1
    elsif (sum > 0)
      k -= 1
    end
   end
  end
  triplets
end


p "3sum problem----->#{three_sum([-1,0,1,2,-1,-4])}"

# [-4, -1, -1, 0, 1, 2, 4]
#   i   j               k
# -4 + -1 + 4 = -1 so for sum needs to be zero we need to increment j because our array is sorted and we need increment our some than we need to increase our num