# sum of n numbers using recursion

def sum(num)
  return 0 if num == 0
  return num + sum(num-1)
end

p "sum of n numbers----->#{sum(10)}"

# find factorial of number using recursion

def factorial(num)
  return 1 if num <= 1
  return num * factorial(num -1)
end

p "factorial of num---->#{factorial(5)}"

# reverse array without using recursion

def reverse_array(arr)
  left = 0
  right = arr.size - 1
  while left <= right
    arr[left], arr[right] = arr[right], arr[left]
    left = left + 1
    right = right - 1
  end
  arr
end

p "reverse array------>#{reverse_array([1,2,3,4,5,6,7])}"


# fibonaci


def fibonaci(num, memo = {})
  return 1 if num <= 1
  return memo[num] if memo[num]

  return fibonaci(num - 1, memo) + fibonaci(num - 2, memo)
end

n_terms = 10
puts "Fibonacci sequence:"
(0...n_terms).each { |i| puts fibonaci(i) }