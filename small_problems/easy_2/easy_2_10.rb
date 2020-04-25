=begin
What will the following code print, and why? Don't run the code until you have
tried to answer.

Solution:
Moe
Larry
CURLY
SHEMP
Harpo
CHICO
Groucho
Zeppo
=end

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

=begin
Explanation:
More "pass by..." shenanigans!

The weirdness is happening at the element level in array1. Each element in the
array is an object, so when the first Array#each invocation occurs, the
array2 << value operation makes each element in array2 point to the same
objects in array1. Then, the second Array#each invocation mutates the caller
for each value object that begins with 'C' or 'S' in array1. As a result, the
equivalent values in array2 will also be upcased since, again, array2 contains
pointers to the objects also pointed to in array1.
=end
