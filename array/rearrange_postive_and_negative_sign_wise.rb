# Rearrange the array in alternating positive and negative items. input size must be even

# input: [2,3,-1,-2,4,-1] output: [2,-1,3,-2,4,-1]

def rearrange_array(nums)
  new_nums = []
  pos_index = 0
  neg_index = 1
  for i in (0..nums.size - 1)
      if nums[i] > 0
          new_nums[pos_index] = nums[i]
          pos_index += 2
      else
          new_nums[neg_index] = nums[i]
          neg_index += 2
      end
  end
  new_nums
end

p "rearrange array with positive and negative sign wise----->#{rearrange_array([2,3,-1,-2,4,-1])}"