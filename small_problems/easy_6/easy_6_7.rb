=begin
Write a method that takes an Array as an argument, and returns two Arrays (as a
pair of nested Arrays) that contain the first half and second half of the
original Array, respectively. If the original array contains an odd number of
elements, the middle element should be placed in the first half Array.

Inputs:
- array

Outputs:
- two arrays

Requirements:
- two output arrays must contain the first and second half of the original
  respectively
- output array should be a nested array
- arrays with odd elements should return the middle element in first output
  array
- empty array should return two empty arrays

Abstraction:
- return empty nested array if passed array is empty
- if passed array isn't empty, loop through array
- pop the current element into the first new array
- if index is greater or equal to half the passed array's length, pop the
  element into the second array
- return the two new arrays

Examples:

halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]
=end

def halvsies(arr)
  new_arr1 = []
  new_arr2 = []

  arr.each_with_index do |element, idx|
    idx < (arr.size / 2.0).ceil ? new_arr1.push(element) : new_arr2.push(element)
  end

  [new_arr1, new_arr2]
end

p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]

=begin
Alternate solution:

def halvsies(array)
  middle = (array.size / 2.0).ceil
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end
=end
