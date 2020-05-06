=begin
Write a method that takes an array of strings, and returns an array of the same
string values, except with the vowels (a, e, i, o, u) removed.

Inputs:
- array of strings

Outputs:
- array of strings

Requirements:
- new array returned
- vowels removed from individual string elements
- must preserve case of individual words

Abstractions:
- Loop through given array of strings
- For each string element, delete aeiou characters
- Push modified string into new array
- Return new array

Examples:
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
=end

def remove_vowels(str_arr)
  new_arr = []

  str_arr.each { |word| new_arr.push(word.delete('AEIOUaeiou')) }

  new_arr
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
p remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
p remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

=begin
Alternate solution:

def remove_vowels(strings)
  strings.map { |string| string.delete('aeiouAEIOU') }
end
=end
