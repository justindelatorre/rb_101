=begin
Write a method that can rotate the last n digits of a number.

Note that rotating just 1 digit results in the original number being returned.

You may use the rotate_array method from the previous exercise if you want.
(Recommended!)

You may assume that n is always a positive integer.

Inputs:
- (2) integers

Outputs:
- integer

Data Structure(s):
- intermediate array

Requirements:
- assume n (number of last digits to be rotated) is always positive
- if n = 1, the original number is to be returned

Clarifications:
- How do we handle invalid arguments?
- How do we handle n values larger than the size of the original number?

Abstraction:
- Convert first argument into a string, then split into a new array
- Slice the new array into two parts: the start of array to -n, and end of array
  to -n
- Rotate the second array by n using rotate_array
- Array concat both parts back together
- Join the array into a string, convert to integer, and return

Examples:

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917
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

def rotate_rightmost_digits(num, digits)
  num_str = num.to_s
  arr = num_str.chars
  end_idx = arr.size - 1
  
  same, rotate = arr[0..-(digits + 1)], arr[-digits..end_idx]

  rotate = rotate_array(rotate)

  [same, rotate].flatten.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
