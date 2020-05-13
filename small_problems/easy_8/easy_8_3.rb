=begin
Write a method that returns a list of all substrings of a string that start at
the beginning of the original string. The return value should be arranged in
order from shortest to longest substring.

Inputs:
- string

Outputs:
- array of substrings

Requirements:
- output array should contain substrings of increasing length derived from
  argument string
- How do we handle non-string elements in argument string?

Abstraction:
- Instantiate target array as an empty array
- Initialize counter at 0
- Loop while counter < size of argument array
  - Push slice of argument string from index 0 to current counter value index
  - Increment counter
- Return target array

Examples:

substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']
=end

def substrings_at_start(str)
  arr = []
  counter = 0

  while counter < str.size
    arr << str.slice(0..counter)
    counter += 1
  end

  arr
end

p substrings_at_start('abc') == ['a', 'ab', 'abc']
p substrings_at_start('a') == ['a']
p substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

=begin
Alternate solution:

def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end
=end
