# count digits in number

def count_digits(num)
  count = 0
  while num > 0
    last_digit = num % 10
    count += 1
    num = num / 10
  end
  count
end

p "count digits----->#{count_digits(2578)}"

# reverse number

def reverse_num(num)
  rev_num = 0
  while num > 0
    last_digit = num % 10
    rev_num = rev_num * 10 + last_digit
    num = num / 10
  end
  rev_num
end

p "reverse number--->#{reverse_num(342626)}"

def check_palindrome?(num)
  rev_num = 0
  dup_num = num
  while num > 0
    last_digit = num % 10
    rev_num = rev_num * 10 + last_digit
    num = num / 10
  end
  rev_num == dup_num ? true : false
end

p "check palindrome------>#{check_palindrome?(131)}"