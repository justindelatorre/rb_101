=begin
The result of the following statement will be an error:

puts "the value of 40 + 2 is " + (40 + 2)

Why is this and what are two possible ways to fix this?

Solution:
We need to use String interpolation or convert the sum to a String to include
the sum of the two numbers in the output.
=end

puts "the value of 40 + 2 is #{40 + 2}"
puts "the value of 40 + 2 is " + (40 + 2).to_s
