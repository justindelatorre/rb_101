=begin
Starting with the string:

famous_words = "seven years ago..."

show two different ways to put the expected "Four score and " in front of it.
=end

famous_words = "seven years ago..."
gettysburg_intro = "Four score and "

puts gettysburg_intro + famous_words

gettysburg_intro << famous_words

puts gettysburg_intro
