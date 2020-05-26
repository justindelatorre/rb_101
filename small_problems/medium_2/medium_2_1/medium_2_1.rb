=begin
Exercise: https://launchschool.com/exercises/5c3e3cf3

Inputs:
- Text file

Outputs:
- Console output: String of longest sentence in file by word count, and word
  count

Data Structure(s):
- Array, to store each sentence String
- Array, to store word elements in each sentence

Rules:
  Explicit:
  - Sentences end with '.', '!', or '?'
  - Any sequence of characters that are not spaces of sentence-ending
    characters are words, e.g. '--' is a word

  Implicit:
  - 

Clarifications:
- How do we handle empty files?
- How do we handle line breaks?

Algorithm:
- Load text file and get file text
- Break up file text into sentences
- Initialize variable to store longest sentence and set to first sentence.
- Initialize variable to store length of longest sentence and set to length of
  first sentence.
- Loop through all sentences in file.
  - If length of current sentence is greater than length of current longest
    sentence, re-assign longest sentence variable to that sentence and
    re-assign longest length to current sentence length.
- Print a String containing the longest sentence and its word length.

=end


PATH = 'pg84.txt'

file = File.open(PATH)
file_text = file.read

sentences = file_text.split(/\.|\?|!/)

longest = sentences[0]
longest_length = sentences[0].split.size

sentences.each do |sentence|
  if sentence.size > longest_length
    longest = sentence
    longest_length = sentence.split.size
  end
end

puts "The longest sentence is #{longest_length} words: #{longest}"
