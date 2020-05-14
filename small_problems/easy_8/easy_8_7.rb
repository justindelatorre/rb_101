=begin
Write a method that takes a string, and returns a new string in which every
character is doubled.

Inputs:
- string

Outputs:
- string

Requirements:
- the output string should double every character in the argument string
- empty strings should return empty strings
- non-alphabet characters are doubled as well

Abstraction:
- Initialize an empty target string
- Loop through each character in the argument string
  - Multiply the current character * 2, then push into target string
- Return target string

Examples:

repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''
=end

def repeater(str)
  target_str = ''

  str.chars.each { |c| target_str << c * 2 }

  target_str
end

p repeater('Hello') # == "HHeelllloo"
p repeater("Good job!") # == "GGoooodd  jjoobb!!"
p repeater('') # == ''
