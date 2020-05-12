=begin
Write a method that returns the next to last word in the String passed to it as
an argument.

Words are any sequence of non-blank characters.

You may assume that the input String will always contain at least two words.

Inputs:
- string

Outputs:
- string

Requirements:
- words are any sequence of non-blank characters
- input string will always contain at least two words

Abstraction:
- Split argument string into an array
- Return the string element at array[-2]

Examples:

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'
=end

def penultimate(str)
  arr = str.split

  arr[-2]
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!') == 'is'
