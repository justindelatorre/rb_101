=begin
Write a program that asks the user to enter an integer greater than 0, then ask
if the user wants to determine the sum or product of all numbers between 1 and
the entered integer.

Examples:
>> Please enter an integer greater than 0:
5
>> Enter 's' to compute the sum, 'p' to compute the product.
s
The sum of the integers between 1 and 5 is 15.

>> Please enter an integer greater than 0:
6
>> Enter 's' to compute the sum, 'p' to compute the product.
p
The product of the integers between 1 and 6 is 720.
=end

input = 0
loop do
  puts '>> Please enter an integer greater than 0:'
  input = gets.chomp.to_i
  break if input > 0
  puts '>> Invalid choice. Please try again.'
end

operation = ''
loop do
  puts ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp.to_s
  break if operation == 's' || operation == 'p'
  puts ">> Invalid choice. Please input either 's' or 'p'."
end

if operation == 's'
  output = (1..input).inject(:+)
  puts "The sum of the integers between 1 and #{input} is #{output}."
else
  output = (1..input).inject(:*)
  puts "The product of the integers between 1 and #{input} is #{output}."
end
