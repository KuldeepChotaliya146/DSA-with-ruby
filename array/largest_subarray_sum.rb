# Brute Force:- Find all sub array and return sum of subarray who have highest sum.

# optimal approach:- kanade's algorithm

# explanation of algo:-

# algo says that we will iterate over the array and we will maintain two variable max_sum and current_sum. 
# current_sum will be the sum when we are iterating over the array and add it to current_sum
# We will only preserve our current_sum when we got it as positive any other case it will be 0. So when we get our current_sum negative we will make current_sum 0. (Because saving negative value does not make any sense. If we add something to negative it will make more negative)
# When we get current_sum > max_sum then we will update max_sum = current_sum

def max_subarray_sum(arr)
  max_sum = 0
  current_sum = 0
  sub_start = nil
  sub_end = nil

  for i in (0..arr.size - 1)
    sub_start = i if current_sum == 0 # saving starting index where we get our current_sum positive

    current_sum += arr[i]
    p "current_sum---->#{current_sum}"
    p "maximum_sum---->#{max_sum}"
    
    if current_sum > max_sum
      max_sum = current_sum 
      sub_end = i # saving end index when our current_sum is greater than max_sum
    end

    if (current_sum < 0)
      current_sum = 0
    end
  end
  p "sub_start--->#{sub_start}"
  p "sub_end---->#{sub_end}"
  max_sum
end

p "max subarray sum----->#{max_subarray_sum([-2,-3,4,-1,-2,1,5,-3])}"