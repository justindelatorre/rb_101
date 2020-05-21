=begin
If you take a number like 735291, and rotate it to the left, you get 352917. If
you now keep the first digit fixed in place, and rotate the remaining digits,
you get 329175. Keep the first 2 digits fixed in place and rotate again to
321759. Keep the first 3 digits fixed in place and rotate again to get 321597.
Finally, keep the first 4 digits fixed in place and rotate the final 2 digits to
get 321579. The resulting number is called the maximum rotation of the original
number.

Write a method that takes an integer as argument, and returns the maximum
rotation of that argument. You can (and probably should) use the
rotate_rightmost_digits method from the previous exercise.

Note that you do not have to handle multiple 0s.

Inputs:
- integer

Outputs:
- integer

Data Structure(s):
- string or array

Requirements:
- should use rotate_rightmost_digits from previous exercise
- do not have to handle multiple 0s
- digits that stay fixed increase with each iteration

Clarification:
- How do you handle invalid values, e.g. Strings, nil, Floats, etc.?

Abstraction:
- Set rotated_num_str String variable to passed argument converted to String
- Set Integer variable counter to 1
- Loop through Array of chars in String variable
  - Call rotate_rightmost_digits on Integer argument rotated_num and
    rotated_num.to_s.size - counter 
  - Increment counter by 1
- Return rotated_num converted back to Integer

Example:

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845
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

def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end

p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
