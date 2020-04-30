=begin
Modify the word_sizes method from the previous exercise to exclude non-letters
when determining word size. For instance, the length of "it's" is 3, not 4.
=end

def word_sizes(str)
  counts_hsh = {}

  # Split string into array
  arr = str.split

  # For each element in the array, count the size of the element
  arr.each do |word|
    clean_word = word.gsub(/[^A-Za-z]/ ,'')
    if counts_hsh[clean_word.size]
      counts_hsh[clean_word.size] += 1
    else
      counts_hsh[clean_word.size] = 1 
    end 
  end 

  counts_hsh
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')
