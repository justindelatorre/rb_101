=begin
Write a method that rotates an array by moving the first element to the end of
the array. The original array should not be modified.

Do not use the method Array#rotate or Array#rotate! for your implementation.

Inputs:
- array

Outputs:
- array

Requirements:
- not allowed to use Array#rotate(!) method
- cannot modify the original array
- single-element arrays should return the "same" array

Clarifications:
- How do we handle "invalid" arguments?

Abstraction:
- Create empty target array
- Initialize counter variable at 1
- Loop through argument array while counter < argument array size
  - Push current element into target array
  - Increment counter
- Push first element in argument array into target array
- Return target array

Example:

rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true
=end

def rotate_array(arr)
  rotated_arr = []
  counter = 1

  while counter < arr.size
    rotated_arr << arr[counter]
    counter += 1
  end

  rotated_arr << arr[0]

  rotated_arr
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true

=begin
Alternate solution:

def rotate_array(array)
  array[1..-1] + [array[0]]
end
=end
