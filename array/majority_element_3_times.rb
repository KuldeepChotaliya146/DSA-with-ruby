# Given an integer array of size n, find all elements that appear more than ⌊ n/3 ⌋ times.

# using hashing

def majority_element(nums)
  elems = []
  max_count = nums.size / 3
  hash = Hash.new(0)
  for i in (0..nums.size - 1)
      hash[nums[i]] += 1
  end
  for key,value in hash
      elems << key if value > max_count
  end
  elems
end


p "majoruty elems------>#{majority_element([1,2])}"
