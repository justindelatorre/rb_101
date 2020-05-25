=begin
Write a method that takes a sentence string as input, and returns the same
string with any sequence of the words 'zero', 'one', 'two', 'three', 'four',
'five', 'six', 'seven', 'eight', 'nine' converted to a string of digits.

Inputs:
- String

Outputs:
- String

Data Structure(s):
- Array, to hold word elements from argument String
- Hash, to store mapping of number words to digits

Rules:
  Implicit:
  - All numbers in Strings will be 0-9.
  - Digits in resulting String must be separated by one space.

  Explicit:
  - Number words are to be replaced by equivalent digit.

Clarifications:
- How do we handle invalid inputs, e.g. non-String, nil, etc.?
- Will all numbers provided in input Strings be 0-9?
- What does the "same string" mean?

Algorithm:
- Initialize variable and assign to Hash object containing mapping of number
  word to quivalent digit.
- Loop through each key in the Hash
  - For each hash key, search for whole-word number words and replace with digit
    equivalent

Example:

word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
=end

DIGITS = {
  'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3', 'four' => '4',
  'five' => '5', 'six' => '6', 'seven' => '7', 'eight' => '8', 'nine' => '9'
}.freeze

def word_to_digit(sentence)
  DIGITS.keys.each do |word|
    sentence.gsub!(/\b#{word}\b/, DIGITS[word])
  end
  sentence
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
