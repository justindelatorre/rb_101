=begin
A double number is a number with an even number of digits whose left-side digits
are exactly the same as its right-side digits. For example, 44, 3333, 103103,
7676 are all double numbers. 444, 334433, and 107 are not.

Write a method that returns 2 times the number provided as an argument, unless
the argument is a double number; double numbers should be returned as-is.

Inputs:
- integer

Outputs:
- integer

Requirements:
- definition of double number: even digits, palindrome
- arguments that are double numbers return the original number
- arguments that are not double numbers are doubled

Questions:
- How to handle non-integer or empty arguments?

Abstraction:
- Initialize string variable
- Assign to argument integer converted to string
- If string size is even and first half of string is the same as second half:
  - Convert back to integer
- Else, convert back to integer and double
- Return variable

Examples:

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10
=end

def twice(num)
  str = num.to_s
  mid = str.size / 2
  result = 0

  if str.size.even? && str[0..(mid - 1)] == str[mid..str.size - 1]
    result = str.to_i
  else
    result = str.to_i * 2
  end

  result
end

p twice(37) == 74
p twice(44) == 44
p twice(334433) == 668866
p twice(444) == 888
p twice(107) == 214
p twice(103103) == 103103
p twice(3333) == 3333
p twice(7676) == 7676
p twice(123_456_789_123_456_789) == 123_456_789_123_456_789
p twice(5) == 10
