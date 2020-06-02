=begin
A featured number (something unique to this exercise) is an odd number that is a
multiple of 7, and whose digits occur exactly once each. So, for example, 49 is
a featured number, but 98 is not (it is not odd), 97 is not (it is not a
multiple of 7), and 133 is not (the digit 3 appears twice).

Write a method that takes a single integer as an argument, and returns the next
featured number that is greater than the argument. Issue an error message if
there is no next featured number.

Inputs:
- Integer

Outputs:
- Integer

Data Structure(s):
- String, to convert passed Integer to
- Array, to convert String to

Rules:
  Explicit:
  - Featured numbers is defined as:
    - Odd
    - Multiple of 7
    - Digits do not repeat
  - Method must issue error message if no featured number exists
  Implicit:
  - N/A

Clarifications:
- Can we assume all given numbers will be positive Integers?

Algorithm:
- Define method to check if a number is "featured":
  - Initialize variable and assign it to passed Integer argument converted to
    String
  - Initialize variable and assign it to previous String converted to Array
  - Return true if Integer is odd, is divisible by 7, and count of chars in
    equivalent Array equals 1
- Define featured method to return next largest featured number:
  - Initialize counter variable and assign to Integer argument
  - Initiate a loop:
    - Break if counter is a featured number
    - If counter is divisible by 7, increment by 7
    - Else, increment counter by 1
  - Return counter

Examples:

featured(12) == 21
featured(20) == 21
featured(21) == 35
featured(997) == 1029
featured(1029) == 1043
featured(999_999) == 1_023_547
featured(999_999_987) == 1_023_456_987

featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
=end

def is_featured?(num)
  digits_arr = num.to_s.chars

  are_digits_unique = digits_arr.all? { |digit| digits_arr.count(digit) == 1 }

  num.odd? && (num % 7).zero? && are_digits_unique
end

def featured(num)
  counter = num

  loop do
    break if is_featured?(counter)

    if (counter % 7).zero?
      counter += 7
    else
      counter += 1
    end
  end

  counter
end

p featured(12) == 21
p featured(20) == 21
p featured(21) == 35
p featured(997) == 1029
p featured(1029) == 1043
p featured(999_999) == 1_023_547
p featured(999_999_987) == 1_023_456_987

p featured(9_999_999_999) # -> There is no possible number that fulfills those requirements
