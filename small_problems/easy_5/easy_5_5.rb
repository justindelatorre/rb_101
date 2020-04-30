=begin
Given a string that consists of some words (all lowercased) and an assortment
of non-alphabetic characters, write a method that returns that string with all
of the non-alphabetic characters replaced by spaces. If one or more
non-alphabetic characters occur in a row, you should only have one space in the
result (the result should never have consecutive spaces).
=end

def cleanup(str)
  str.gsub!(/[^A-Za-z]+/, ' ')
end

p cleanup("---what's my +*& line?")
