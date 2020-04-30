=begin
Given a string of words separated by spaces, write a method that takes this
string of words and returns a string in which the first and last letters of
every word are swapped.

You may assume that every word contains at least one letter, and that the string
will always contain at least one word. You may also assume that each string
contains nothing but words and spaces.
=end

def swap(str)
  # Split the argument string into an array
  arr = str.split

  # For each element in the array, switch the first and last letters
  arr.map { |word| word[0], word[-1] = word[-1], word[0] }

  # Join the array into a string again
  arr.join(' ')
end

p swap('Oh what a wonderful day it is')
p swap('Abcde')
p swap('a')
