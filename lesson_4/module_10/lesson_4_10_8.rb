=begin
What happens when we modify an array while we are iterating over it? What would 
be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

Solution:
=> 1
=> 3



What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

Solution:
=> 1
=> 2

Explanation:
In both cases we see that iterators DO NOT work on a copy of the original array
or from stale meta-data (length) about the array. They operate on the original
array in real time.
=end
