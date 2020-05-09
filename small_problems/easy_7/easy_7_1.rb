=begin
Write a method that combines two Arrays passed in as arguments, and returns a
new Array that contains all elements from both Array arguments, with the
elements taken in alternation.

You may assume that both input Arrays are non-empty, and that they have the same
number of elements.

Inputs:
- two arrays

Outputs:
- one array

Requirements:
- output array must contain alternating elements from passed arrays
- What happens when you pass in two empty arrays?

Abstraction:
- Create target array
- Initiate a loop starting at index 0
- Push the element at current index for array1 into target array
- Push the element at current index for array2 into target array
- Break loop when index equals array1.size
- Return target array

Example:

interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
=end

def interleave(arr1, arr2)
  target_arr = []
  index = 0

  while index < arr1.size
    target_arr << arr1[index]
    target_arr << arr2[index]
    index += 1
  end

  target_arr
end

p interleave([1, 2, 3], ['a', 'b', 'c']) == [1, 'a', 2, 'b', 3, 'c']
p interleave([], [])
