# larget number in array without sorting

def find_largest(arr)
  largest = arr[0]
  arr.each do |ele|
    largest = ele if largest < ele
  end
  largest
end

# You can also do this solution using first sort the array return arr[-1]


p "find larget number in array--->#{find_largest([2,36,4,6,4,32,63,9,23])}"