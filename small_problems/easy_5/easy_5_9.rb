=begin
Write a method that takes a string argument and returns a new string that
contains the value of the original string with all consecutive duplicate
characters collapsed into a single character. You may not use String#squeeze or
String#squeeze!.
=end

require 'pry'

def crunch(str)
  deduped_str = ''

  # Cycle through each character in the string and add to deduped_str only if
  # if isn't the same as the previous one.
  counter = 1 
  while counter != str.size 
    deduped_str << str[counter] if str[counter] != str[counter - 1]
    counter += 1
  end

  deduped_str
end

p crunch('ddaaiillyy ddoouubbllee')
p crunch('4444abcabccba')
p crunch('ggggggggggggggg')
p crunch('a')
# crunch('')
