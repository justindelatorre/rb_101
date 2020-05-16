=begin
Write a method that takes a positive integer as an argument and returns that
number with its digits reversed.

Don't worry about arguments with leading zeros - Ruby sees those as octal
numbers, which will cause confusing results. For similar reasons, the return
value for our fourth example doesn't have any leading zeros.

Inputs:
- positive integer

Outputs:
- integer

Requirements:
- digits of argument integer must be reversed
- "leading" zeros get truncated after reversal
- How do you treat non-integer (or even non-positive) arguments?

Abstraction:
- Convert argument integer to string
- Reverse string
- Convert string to integer

Examples:

reversed_number(12345) == 54321
reversed_number(12213) == 31221
reversed_number(456) == 654
reversed_number(12000) == 21 # No leading zeros in return value!
reversed_number(12003) == 30021
reversed_number(1) == 1
=end

def reversed_number(num)
  num_str = num.to_s
  num_str.reverse.to_i
end

p reversed_number(12345) == 54321
p reversed_number(12213) == 31221
p reversed_number(456) == 654
p reversed_number(12000) == 21 # No leading zeros in return value!
p reversed_number(12003) == 30021
p reversed_number(1) == 1
