=begin
Write a method that takes a string argument and returns a new string that
contains the value of the original string with all consecutive duplicate
characters collapsed into a single character. You may not use String#squeeze or
String#squeeze!.

Inputs:
- string

Outputs:
- new string

Requirements:
- output string must de-duplicate consecutive repeating characters
- empty strings should return an empty string

Questions:
- How about duplicate non-alphanumeric characters?

Examples:
crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

Data Structures:
- string for input
- (new) string for output

Abstractions:
- Start by adding the first character in the input string to the new string.
  Skip this step if the input string is empty.
- Loop through each character in the input string, starting at index 1 since
  the 0th character is always added automatically.
- If the current character is the same as the previous one, don't add to the new
  one. Otherwise, add the character.
- When the loop terminates, return the new string.
=end

def crunch(str)
  deduped_str = ''
  return deduped_str if str.length <= 0

  counter = 1
  deduped_str << str[0]

  while counter <= str.length - 1
    deduped_str << str[counter] if str[counter] != str[counter - 1]

    counter += 1
  end

  deduped_str
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
p crunch('')
