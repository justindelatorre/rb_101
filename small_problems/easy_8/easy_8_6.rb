=begin
Write a method that takes two arguments: the first is the starting number, and
the second is the ending number. Print out all numbers between the two numbers,
except if a number is divisible by 3, print "Fizz", if a number is divisible by
5, print "Buzz", and finally if a number is divisible by 3 and 5, print
"FizzBuzz".

Inputs:
- two integers: one starting number and one ending number

Outputs:
- print strings to console depending on associated number value

Requirements:
- if a number is divisible by 3, print Fizz
- if a number is divisible by 5, print Buzz
- if a number is divisible by both 3 AND 5, print FizzBuzz
  (Note that this condition should probably go first since Ruby short-circuits)
- if a number fulfills none of these, print the number
- How to handle incorrect argument types?
- What should it do if the first number is smaller than the second?

Abstraction:
- Loop through a range array starting with the first number and ending with the
  second
  - If the number is divisible by both 3 and 5, print FizzBuzz
  - Else if  the number is divisible by 3, print Fizz
  - Else if the number is divisible by 5, print Buzz
  - Else print the number

Example:

fizzbuzz(1, 15)
# -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz
=end

def fizzbuzz(num1, num2)
  (num1..num2).each do |n|
    if n % 3 == 0 && n % 5 == 0
      puts 'FizzBuzz'
    elsif n % 3 == 0
      puts 'Fizz'
    elsif n % 5 == 0
      puts 'Buzz'
    else
      puts n
    end
  end
end

fizzbuzz(1, 15)
