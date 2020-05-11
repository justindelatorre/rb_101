=begin
Write a method that takes two Array arguments in which each Array contains a
list of numbers, and returns a new Array that contains the product of each pair
of numbers from the arguments that have the same index. You may assume that the
arguments contain the same number of elements.

Inputs:
- two arrays

Outputs:
- new, single array

Requirements:
- output array must be new and have the same number of elements as arguments
- each element in new array must contain product of equivalently-indexed
  elements in original arguments
- How do we handle non-number elements? Elements with different numerical data
  types?

Abstraction:
- Instantiate empty target array
- Set index equal to 0
- Loop through both arrays at the same time while index < array size
- For each element in each array, push product into target array
- Return target array

Examples:

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]
=end

def multiply_list(arr1, arr2)
  product_arr = []
  index = 0

  while index < arr1.size
    product_arr << arr1[index] * arr2[index]
    index += 1
  end

  product_arr
end 

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]

=begin
Alternate solution:

def multiply_list(list_1, list_2)
  products = []
  list_1.each_with_index do |item, index|
    products << item * list_2[index]
  end
  products
end
=end
