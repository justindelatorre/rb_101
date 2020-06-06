=begin
Write a method that computes the difference between the square of the sum of
the first n positive Integers and the sum of the squares of the first n
positive Integers

Input(s):
- Integer

Output(s):
- Integer

Data Structure(s):
- N/A

Example(s) / Test Case(s):
sum_square_difference(3) == 22
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150

Clarifications:
- How should the method handle invalid inputs?

Rules:
  Explicit:
  - Calculate difference between:
    - Square of the sum of the first n positive integers, and
    - Sum of squares of the first n positive integers

  Implicit:
  - 

Algorithm:
- Find the square of the sum of first n Integers

- Find the sum of the squares of first n Integers

- Return difference between SqOfS and SOfSq
=end

def square_of_sum(int)
  square = 0

  1.upto(int) do |n|
    square += n
  end

  square**2
end

def sum_of_squares(int)
  sum = 0

  1.upto(int) do |n|
    sum += n**2
  end

  sum
end

def sum_square_difference(int)
  square_of_sum(int) - sum_of_squares(int)
end

p sum_square_difference(3) == 22
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
