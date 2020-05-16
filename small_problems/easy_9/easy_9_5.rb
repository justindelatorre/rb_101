=begin
Write a method that takes a string argument, and returns true if all of the 
alphabetic characters inside the string are uppercase, false otherwise.
Characters that are not alphabetic should be ignored.

Inputs:
- string

Outputs:
- boolean

Requirements:
- empty argument strings should return true
- non-alphabetic characters should be ignored

Abstraction:
- Loop through all the characters in the argument string
  - If the character is lowercase and alphabetic, return false
  - Else skip to the next iteration
- Return true

Examples:

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true
=end

def uppercase?(str)
  str.each_char do |c|
    if ('a'..'z').include?(c)
      return false
    else
      next
    end
  end

  true
end

p uppercase?('t') == false
p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true

=begin
Alternate solution:

def uppercase?(string)
  string == string.upcase
end
=end
