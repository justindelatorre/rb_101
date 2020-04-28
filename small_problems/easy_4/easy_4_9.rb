=begin
In the previous two exercises, you developed methods that convert simple numeric
strings to signed Integers. In this exercise and the next, you're going to
reverse those methods.

Write a method that takes a positive integer or zero, and converts it to a
string representation.

You may not use any of the standard conversion methods available in Ruby, such
as Integer#to_s, String(), Kernel#format, etc. Your method should do this the
old-fashioned way and construct the string by analyzing and manipulating the
number.

Examples

integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'
=end

DIGIT_MAP = {
  0 => '0',
  1 => '1',
  2 => '2',
  3 => '3',
  4 => '4',
  5 => '5',
  6 => '6',
  7 => '7',
  8 => '8',
  9 => '9'
}

def integer_to_string(integer)
  arr = []
  integer_place_holder = integer

  loop do
    arr.unshift(integer_place_holder % 10)
    integer_place_holder /= 10
    break if integer_place_holder.zero?
  end

  arr.join('')
end

puts integer_to_string(4321) == '4321'
puts integer_to_string(0) == '0'
puts integer_to_string(5000) == '5000'

=begin
Alternate solution:
DIGITS = ['0', '1', '2', '3', '4', '5', '6', '7', '8', '9']

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result.prepend(DIGITS[remainder])
    break if number == 0
  end
  result

Explanation:
You don't need a Hash because the resulting remainder aligns to its respective
index position in the DIGITS Array. Integer#divmod combines two steps: grabbing
a remainder and divisionally decrementing a number. String#prepend adds a
substring to the front of a target String.
end
=end
