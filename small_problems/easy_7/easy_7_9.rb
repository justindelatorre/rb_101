=begin
Write a method that takes two Array arguments in which each Array contains a
list of numbers, and returns a new Array that contains the product of every pair
of numbers that can be formed between the elements of the two Arrays. The
results should be sorted by increasing value.

You may assume that neither argument is an empty Array.

Inputs:
- two arrays

Outputs:
- new, single array

Requirements:
- output array must contain m x n elements, where m and n are the size of each
  argument array respectively
- each element in the output array must be the product of one element from the
  first argument and another from the second
- returner array should be sorted ascending

Abstraction:
- Instantiate empty target array
- Set idx_1 and idx_2, or use each (you'll need two independent loops)
- Loop through the first array
  - Loop through the second array
  - Push the product of arr1[idx_1] and arr2[idx_2] to target array
  - Increment idx_2
  - When the inner loop finishes, increment idx_1
- Return target array

Examples:

multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
=end

def multiply_all_pairs(arr1, arr2)
  products = []

  arr1.each do |num1|
    arr2.each do |num2|
      products << num1 * num2
    end
  end

  products.sort
end

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]

=begin
Alternate solution:

def multiply_all_pairs(array_1, array_2)
  array_1.product(array_2).map { |num1, num2| num1 * num2 }.sort
end
=end
