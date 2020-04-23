=begin
Write a method that takes one argument, an array containing integers, and
returns the average of all numbers in the array. The array will never be
empty and the numbers will always be positive integers.

Examples:
puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

The tests above should print true.
=end

def average(arr)
  total = 0
  arr.each { |num| total += num }
  total / arr.size
end

puts average([1, 5, 87, 45, 8, 8]) == 25
puts average([9, 47, 23, 95, 16, 52]) == 40

=begin
Alternate solution:
def average(numbers)
  sum = numbers.reduce { |sum, number| sum + number }
  sum / numbers.count
end

Takeaway:
Enumberable#reduce can be used to add numerical elements in an Enumerable.
=end
