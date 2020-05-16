=begin
Write a method that takes an integer argument, and returns an Array of all
integers, in sequence, between 1 and the argument.

You may assume that the argument will always be a valid integer that is greater
than 0.

Inputs:
- integer

Outputs:
- array (of integers)

Requirements:
- output array should include integers in sequence from 1 to argument

Questions:
- How to handle non-integer, negative, 0, or empty arguments?

Abstraction:
- Initialize empty target array
- Initialize counter variable at 1
- While counter is less than or equal to argument integer, loop
  - Add current counter value to target array
  - Increment counter by 1
- Return target array

Examples:

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]
=end

def sequence(num)
  arr = []
  counter = 1

  while counter <= num
    arr << counter
    counter += 1
  end

  arr
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]

=begin
Alternate solution:

def sequence(number)
  (1..number).to_a
end
=end
