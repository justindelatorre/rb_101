=begin
Write a method that takes an Array of numbers, and returns an Array with the
same number of elements, and each element has the running total from the
original Array.

Examples:

running_total([2, 5, 13]) == [2, 7, 20]
running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
running_total([3]) == [3]
running_total([]) == []
=end

def running_total(arr)
  running_totals = []
  current_total = 0

  arr.each { |element| running_totals.push(current_total += element) }

  running_totals
end

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []

=begin
Alternate solution:

def running_total(array)
  sum = 0
  array.map { |value| sum += value }
end
=end
