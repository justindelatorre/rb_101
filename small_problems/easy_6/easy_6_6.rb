=begin
Write a method that takes two Arrays as arguments, and returns an Array that contains all of the values from the argument Arrays. There should be no duplication of values in the returned Array, even if there are duplicates in the original Arrays.

Inputs:
- two separate arrays

Outputs:
- a single array

Requirements:
- values in output array should be a unique list of elements from original
  arrays

Abstractions:
- Concatenate the two passed arrays together in a new array
- Return the unique elements using Array#uniq

Example:

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
=end

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

=begin
Alternate solution:
def merge(array_1, array_2)
  array_1 | array_2
end

Explanation:
The Array#| method returns the union of two arrays.
=end
