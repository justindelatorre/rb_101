=begin
Write a method that takes a string with one or more space separated words and
returns a hash that shows the number of words of different sizes.

Words consist of any string of characters that do not include a space.
=end

def word_sizes(str)
  counts_hsh = {}

  # Split string into array
  arr = str.split

  # For each element in the array, count the size of the element
  arr.each do |word|
    if counts_hsh[word.size]
      counts_hsh[word.size] += 1
    else
      counts_hsh[word.size] = 1
    end
  end

  counts_hsh
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')

=begin
Alternate solution:

def word_sizes(words_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end

Explanation:
The counts hash is initialized with a default value using the hash constructor
method so that the counts[word.size] += 1 expression doesn't throw and error
the first time it is evaluated.
=end
