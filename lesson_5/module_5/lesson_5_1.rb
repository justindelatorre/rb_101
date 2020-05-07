=begin
How would you order this array of number strings by descending numeric value?

Input:
- unsorted array containing numerical strings

Output:
- array, sorted by numeric value

Requirements:
- values must be sorted by numeric value, not their ASCII-string value
- values must remain strings

Abstraction:
- Loop through the array using sort
- Within the sort block, convert each element to its equivalent integer value
=end

arr = ['10', '11', '9', '7', '8']

arr.sort! do |a, b|
  b.to_i <=> a.to_i
end

p arr
