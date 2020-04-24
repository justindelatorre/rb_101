=begin
What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

Solution:
1
2
2
3
=end

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

=begin
Explanation:
Array#uniq does not mutate the caller, so printing numbers after #uniq is
called will print all elements in the original numbers array.
=end
