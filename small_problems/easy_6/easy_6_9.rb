=begin
Write a method named include? that takes an Array and a search value as
arguments. This method should return true if the search value is in the array,
false if it is not. You may not use the Array#include? method in your solution.

Inputs:
- array
- search value

Outputs:
- boolean

Requirements:
- Must take in an array
- Must take in a search value of any data type
- Must return a Boolean
- Must not use include

Abstraction:
- Loop through passed array
- Compare each element to the search value
- Return true if there is a match
- Return false otherwise

Examples:

include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false
=end

def include?(arr, search_value)
  arr.each { |element| return true if element == search_value }
  false
end

p include?([1,2,3,4,5], 3) == true
p include?([1,2,3,4,5], 6) == false
p include?([], 3) == false
p include?([nil], nil) == true
p include?([], nil) == false

=begin
Alternate solution:

def include?(array, value)
  !!array.find_index(value)
end
=end
