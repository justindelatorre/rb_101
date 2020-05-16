=begin
Write a method that takes a non-empty string argument, and returns the middle
character or characters of the argument. If the argument has an odd length, you
should return exactly one character. If the argument has an even length, you
should return exactly two characters.

Inputs:
- non-empty string

Outputs:
- string

Requirements:
- if argument string is of odd length, return one character
- if argument string is of even length, return two characters

Abstraction:
- If length of argument string is odd, then return character at size / 2
- If length of argument string is even, then return character at ((size / 2) - 1)
  and size / 2

Examples:

center_of('I love ruby') == 'e'
center_of('Launch School') == ' '
center_of('Launch') == 'un'
center_of('Launchschool') == 'hs'
center_of('x') == 'x'
=end

def center_of(str)
  mid = str.size / 2
  center_str = str.size.odd? ? str[mid] : str[(mid - 1)..mid]
  
  center_str
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'
