=begin
Write a method that takes an Array of numbers and then returns the sum of the
sums of each leading subsequence for that Array. You may assume that the Array
always contains at least one number.

Inputs:
- array

Outputs:
- integer (float might also be valid)

Requirements:
- argument array will always have at least one number
- How do we handle floats? Do we assume always integers?
- sum must be sums of each subsequence

Abstraction:
- Set total variable to 0
- Set a counter equal to the size of the argument array
- Loop through the argument array
  - Increment total by element value times the counter
  - Decrement the counter by 1
- Return total

Examples:
sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35
=end

def sum_of_sums(arr)
  total = 0
  counter = arr.size

  arr.each do |num|
    total += num * counter
    counter -= 1
  end

  total
end

p sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
p sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35

=begin
Alternate solutions:

def sum_of_sums(numbers)
  sum_total = 0
  accumulator = 0

  numbers.each do |num|
    accumulator += num
    sum_total += accumulator
  end

  sum_total
end

def sum_of_sums(numbers)
  sum_total = 0
  1.upto(numbers.size) do |count|
    sum_total += numbers.slice(0, count).reduce(:+)
  end
  sum_total
end
=end
