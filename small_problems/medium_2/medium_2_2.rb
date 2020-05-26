=begin
Exercise: https://launchschool.com/exercises/41e03303

Inputs:
- String

Outputs:
- Boolean

Data Structure(s):
- Hash, to count instances of block letter use
- Array, to pair letters and use as key in above Hash

Rules:
  Explicit:
  - A proper block word can't use a block letter-pair more than once.
  Implicit:
  - Capitalization doesn't matter.

Clarifications:
- How do we handle words with mixed cases, e.g. 'Britain'?
- How do we handle invalid inputs, e.g. non-String, nil, etc.?

Algorithm:
- Initialize variable and assign to Hash containing block letter pairs as keys
  and initial values to 0.
- Loop through each character (upcased) in the passed argument:
  - Increment value of corresponding key for the current character.
- Return false if any Hash values are greater than 1, else return true.

Examples:

block_word?('BATCH') == true
block_word?('BUTCH') == false
block_word?('jest') == true
=end

LETTERS = [
  ['B', 'O'],  ['X', 'K'],  ['D', 'Q'],  ['C', 'P'], ['N', 'A'], ['G', 'T'],
  ['R', 'E'],  ['F', 'S'],  ['J', 'W'],  ['H', 'U'], ['V', 'I'], ['L', 'Y'],
  ['Z', 'M']
]

def block_word?(word)
  hsh = Hash.new
  LETTERS.each { |letter| hsh[letter] = 0 }

  word.chars.each do |char|
    hsh.each do |k, v|
      hsh[k] += 1 if k.include?(char.upcase)
    end
  end

  hsh.each { |_, v| return false if v > 1 }
  true
end

p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true
