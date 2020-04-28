=begin
Write a method that determines and returns the ASCII string value of a string
that is passed in as an argument. The ASCII string value is the sum of the ASCII
values of every character in the string. (You may use String#ord to determine
the ASCII value of a character.)
=end

def ascii_value(str)
  # Used to collect sum value
  sum = 0

  # Loop through each character in the String
  str.each_char { |c| sum += c.ord }

  sum
end

puts ascii_value('Four score')
puts ascii_value('Launch School')
puts ascii_value('a')
puts ascii_value('')

=begin
Further Exploration:
There is an Integer method such that:

char.ord.mystery == char

where mystery is our mystery method. Can you determine what method name should
be used in place of mystery? What happens if you try this with a longer string
instead of a single character?

Solution:
Integer#chr
=end
