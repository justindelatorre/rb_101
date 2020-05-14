=begin
Write a method that takes a string, and returns a new string in which every
consonant character is doubled. Vowels (a,e,i,o,u), digits, punctuation, and
whitespace should not be doubled.

Inputs:
- string

Outputs:
- string

Requirements:
- new string should onlu double consonants
- an empty string argument should return an emtpy string
- case is preserved when doubling

Abstraction:
- Initialize empty target string
- Loop through each character in the argument string
  - If the current character is a consonant, double it and add to target string
  - Else, add to target string-
- Return target string

Examples:

double_consonants('string') == "ssttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""
=end

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(str)
  target_str = ''

  str.each_char do |c|
    if CONSONANTS.include?(c.downcase)
      target_str << c * 2
    else
      target_str << c
    end
  end

  target_str
end

p double_consonants('string') == "ssttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""
