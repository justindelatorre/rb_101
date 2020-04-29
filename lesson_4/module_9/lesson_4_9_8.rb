=begin
How does take work? Is it destructive? How can we find out?

Solution:
Array#take returns the first n elements from a target array in a new array,
where n is the argument value passed. This instance should return [1, 2].
Arr#take is not destructive.
=end

arr = [1, 2, 3, 4, 5]
arr.take(2)
