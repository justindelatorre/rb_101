=begin
Write a method that takes one argument, a string, and returns a new string with
the words in reverse order.

Examples:

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

The tests above should print true.
=end

def reverse_sentence(sentence)
  reverse_arr = []

  # Split sentence into Array, then add to "front" of reverse_arr
  sentence.split(' ').each { |word| reverse_arr.unshift(word) }

  # Create "sentence" from reverse_arr
  reverse_arr.join(' ')
end

puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

=begin
Alternate solution:

def reverse_sentence(string)
  string.split.reverse.join(' ')
end

Takeaway: There is an Array#reverse method!
=end
