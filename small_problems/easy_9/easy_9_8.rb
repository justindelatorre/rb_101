=begin
Create a method that takes two integers as arguments. The first argument is a
count, and the second is the first number of a sequence that your method will
create. The method should return an Array that contains the same number of
elements as the count argument, while the values of each element will be
multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater,
while the starting number can be any integer value. If the count is 0, an empty
list should be returned.

Inputs:
- (2) integers

Outputs:
- array

Requirements:
- count (first argument) will always be 0 or greater
  - if count is 0, return an empty list
- starting number (second argument) will be any integer value
- output array will contain an array the same number of elements as count
- values of each array element will be multiples of starting number
- each additional element will be an absolute value increment of the previous,
  so the "sign" will stay the same as the starting number

Clarifications:
- How do we handle non-integer or nil arguments?

Abstraction:
- Set "multiple" variable to 1
- Set target array to an empty array
- Loop until multiple is greater than count
  - For each loop, push count * multiple to target array
  - Increment multiple
- Return target array

Examples:

sequence(5, 1) == [1, 2, 3, 4, 5]
sequence(4, -7) == [-7, -14, -21, -28]
sequence(3, 0) == [0, 0, 0]
sequence(0, 1000000) == []
=end

def sequence(count, start)
  arr = []
  multiple = 1

  while multiple <= count
    arr << start * multiple
    multiple += 1
  end

  arr
end

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7) == [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []

=begin
Alternate solution:

def sequence(count, first)
  (1..count).map { |value| value * first }
end
=end
