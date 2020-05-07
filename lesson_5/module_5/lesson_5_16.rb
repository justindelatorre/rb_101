=begin
A UUID is a type of identifier often used as a way to uniquely identify items...
which may not all be created by the same system. That is, without any form of
synchronization, two or more separate computer systems can create new items and
label them with a UUID with no significant chance of stepping on each other's
toes.

It accomplishes this feat through massive randomization. The number of possible
UUID values is approximately 3.4 X 10E38.

Each UUID consists of 32 hexadecimal characters, and is typically broken into 5
sections like this 8-4-4-4-12 and represented as a string.

It looks like this: "f65c57f6-a6aa-17a8-faa1-a67f2dc9fa91"

Write a method that returns one UUID when called with no parameters.

Inputs:
- none

Output:
- string, consisting of 8-4-4-4-12 hexadecimal character combinations

Requirements
- characters must be hexadecimal
- substrings must 8, 4, 4, 4, 12 characters long
- output string must be joined by '-'

Data Structure(s)
- array, to store substrings, then get joined at end
=end

CHARACTERS = ('a'..'z').to_a + ('0'..'9').to_a

def create_string_of_length(num)
  random_str = ''
  num.times { random_str << CHARACTERS.sample }
  random_str
end

def create_uuid
  [
    create_string_of_length(8),
    create_string_of_length(4),
    create_string_of_length(4),
    create_string_of_length(4),
    create_string_of_length(12)
  ].join('-')
end

p create_uuid
