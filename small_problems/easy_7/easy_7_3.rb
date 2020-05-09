=begin
Write a method that takes a single String argument and returns a new string that
contains the original value of the argument with the first character of every
word capitalized and all other letters lowercase.

You may assume that words are any sequence of non-blank characters.

Inputs:
- string

Outputs:
- string

Requirements:
- words that do not begin with a letter, e.g. "quoted" do not need to be
  capitalized
- What do you do with an empty string or nil?

Abstraction:
- Turn passed string into an array
- Cycle through array
- Call capitalize! on each word in array
- Re-join into string

Examples:
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
=end

def word_cap(str)
  arr = str.split

  arr.each { |word| word.capitalize! }

  arr.join(' ')
end

p word_cap('four score and seven') == 'Four Score And Seven'
p word_cap('the javaScript language') == 'The Javascript Language'
p word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
