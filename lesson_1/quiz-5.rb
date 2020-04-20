=begin
Write a method that takes one argument, a
sentence string, and returns an array of
integers. The value of each integer in the
array should be equal to the length of the
word in the corresponding position in the
sentence. For example, if the sentence was
'To be or not to be' the array of integers
would be [2, 2, 2, 3, 2, 2].
=end

sample_sentence = "To be or not to be"

# Option 1
def string_lengths_1(sentence)
  strings = sentence.split

  strings.map { |chars| chars.length }
end

puts "Result of Option 1:"
p string_lengths_1(sample_sentence)

# Option 2
def string_lengths_2(sentence)
  strings = sentence.split
  lengths = []

  strings.each do |string|
    lengths << string.size
  end
end

puts "Result of Option 2:"
p string_lengths_2(sample_sentence)

# Option 3
def string_lengths_3(sentence)
  words = sentence.split
  word_lengths = []
  counter = 0

  while counter < words.size do
    word_lengths << words[counter].length
    counter += 1
  end

  word_lengths
end

puts "Result of Option 3:"
p string_lengths_3(sample_sentence)

# Option 4
def string_lengths_4(sentence)
  strings = sentence.split
  lengths = []
  counter = 1

  until counter == strings.size do
    word_length = strings[counter - 1].length
    lengths.push(word_length)
    counter += 1
  end

  lengths
end

puts "Result of Option 3:"
p string_lengths_4(sample_sentence)
