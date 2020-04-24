=begin
Build a program that displays when the user will retire and how many years she
has to work till retirement.

Example:

What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!
=end

require 'date'

print 'What is your age? '
current_age = gets.chomp.to_i

print 'At what age would you like to retire? '
retire_age = gets.chomp.to_i

diff_age = retire_age - current_age

puts "It's #{Date.today.year}. You will retire in "\
     "#{Date.today.year + diff_age}."
puts "You only have #{diff_age} years of work to go!"
