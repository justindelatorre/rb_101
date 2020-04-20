=begin
write out pseudo-code (both casual and formal)
that does the following:

- a method that returns the sum of two integers
- a method that takes an array of strings, and returns
  a string that is all those strings concatenated together
- a method that takes an array of integers, and returns
  a new array with every other element
=end

# Method 1
# Casual pseudo-code

=begin
Pass two given integers into a method.
Assign the sum of the two integers to a variable.
Return that variable.
=end

# Formal pseudo-code

=begin
START

Pass two given integers into a method.
READ the value of the two integers and assign their
sum to a variable.
Return that variable.

END
=end

# Method 2
# Casual pseudo-code

=begin
Given an array of strings.
Pass the array into a method.
Define an empty string variable as a placeholder.
For each string in the array, perform string
concatenation to the placeholder string variable.
Return the placeholder string variable.

=end

# Formal pseudo-code

=begin
START

Given an array of strings.
Pass the array into a method.

SET concat_str to an empty string.
WHILE index of that array is not its length minus one
	READ current string element in array and string
	concat to concat_str

Return concat_str

END
	
=end

# Method 3
# Casual pseudo-code

=begin
Given an array of integers.
Create a new target array.
For each element in the first array
- If the index of the current element divided by 2 is
  one, then add the element to the target array
Return the target array 
=end

# Formal pseudo-code

=begin
START

Given an array of integers, int_arr.
SET target_arr to an empty array.

WHILE index of int_arr is not its length minus one
	READ element at current index
	IF the index of that element divided by 2 is one
		Add the element to target_arr
	ELSE
		Skip the element

Return the target array.

END
=end
