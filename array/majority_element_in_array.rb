# Majority element which appears in array > n/2 times

# brute force approach - just iterate through array and maintain one count variable when you get count > n/2 just return that ele

# better approach - maintain one hash in which you maintain count of each element and then iterate through hash and return key which have value > n/2

# optimal approach - use moore's voting algo

# Working :
# When the elements are the same as the candidate element, votes are incremented whereas when some other element is found (not equal to the candidate element), we decreased the count. This actually means that we are decreasing the priority of winning ability of the selected candidate, since we know that if the candidate is in majority it occurs more than N/2 times and the remaining elements are less than N/2. We keep decreasing the votes since we found some different element(s) than the candidate element. When votes become 0, this actually means that there are the equal  number of votes for different elements, which should not be the case for the element to be the majority element. So the candidate element cannot be the majority and hence we choose the present element as the candidate and continue the same till all the elements get finished. The final candidate would be our majority element. We check using the 2nd traversal to see whether its count is greater than N/2. If it is true, we consider it as the majority element.

# Steps to implement the algorithm :
# Step 1 – Find a candidate with the majority –

# Initialize a variable say i ,votes = 0, candidate =-1 
# Traverse through the array using for loop
# If votes = 0, choose the candidate = arr[i] , make votes=1.
# else if the current element is the same as the candidate increment votes
# else decrement votes.
# Step 2 – Check if the candidate has more than N/2 votes –

# Initialize a variable count =0 and increment count if it is the same as the candidate.
# If the count is >N/2, return the candidate.
# else return -1.


def majority_element(arr)
  count = 0
  element = nil
  for i in (0..arr.size - 1)
    if(count == 0)
      count += 1
      element = arr[i]
    elsif arr[i] == element
      count += 1
    else 
      count -= 1
    end
  end
  majority_count = 0
  for i in (0..arr.size - 1)
    majority_count += 1 if arr[i] == element
  end
  majority_count > arr.size / 2 ? element : -1
end

p "Find majority element in array > n/2 times--->#{majority_element([1,2,1,4,1,1,1,1,1,4])}"