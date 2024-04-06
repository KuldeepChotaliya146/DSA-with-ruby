def four_sum(nums)
  return [] if nums.length < 4
  nums.sort!
  quads = []
    for i in (0..nums.size - 1)
      next if i > 0 && nums[i] == nums[i-1] # skip duplicate i
      for j in (i+1..nums.size - 1)
        next if j != i + 1 && nums[j] == nums[j-1] # skip duplicate j
        k = j + 1
        l = nums.size - 1
        while(k < l)
          sum = nums[i] + nums[j] + nums[k] + nums[l]
          if sum == 0
            quads << [nums[i] , nums[j] , nums[k] , nums[l]]
            k += 1
            l -= 1
            k += 1 while k < l && nums[k] == nums[k-1]  # Skip duplicates for k
            l -= 1 while k < l && nums[l] == nums[l+1]  # Skip duplicates for l
          elsif (sum < 0)
            k += 1
          elsif (sum > 0)
            l -= 1
          end
        end
      end
    end
  quads
end


p "four sum----->#{four_sum([1,0,-1,0,-2,2])}"