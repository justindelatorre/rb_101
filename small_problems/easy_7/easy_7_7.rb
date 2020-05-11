=begin
Write a method that takes an Array of integers as input, multiplies all the
numbers together, divides the result by the number of entries in the Array, and
then prints the result rounded to 3 decimal places. Assume the array is
non-empty.

Inputs:
- array of integers

Outputs:
- float, rounded to 3 decimals

Requirements:
- array will always be non-empty
- multiplies all numbers together
- divides by number of array elements
- result is printed, not returned
- What do we do with non-integer elements?

Abstraction:
- Instantiate variable to increment and set to 1 (since we're multiplying)
- Loop through each element in passed array
- Multiplicatively increment original variable by each element
- Divide variable by float-converted array size and round to 3 decimals
- Output division result as part of output string

Examples:

show_multiplicative_average([3, 5])
The result is 7.500

show_multiplicative_average([6])
The result is 6.000

show_multiplicative_average([2, 5, 7, 11, 13, 17])
The result is 28361.667
=end

def show_multiplicative_average(arr)
  total = 1

  arr.each { |num| total *= num }

  puts "The result is %.3f" % (total / arr.size.to_f).round(3)
end

show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])
