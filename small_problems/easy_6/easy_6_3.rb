=begin
The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...)
such that the first 2 numbers are 1 by definition, and each subsequent number is
the sum of the two previous numbers. This series appears throughout the natural
world.

Computationally, the Fibonacci series is a very simple series, but the results
grow at an incredibly rapid rate. For example, the 100th Fibonacci number is
354,224,848,179,261,915,075 -- that's enormous, especially considering that it
takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci
number that has the number of digits specified as an argument. (The first
Fibonacci number has index 1.)

Inputs:
- integer, indicating number of digits

Outputs:
- integer, indicating index of number in Fibonacci sequence

Requirements:
- Need to be able to calculate Fibonacci numbers
- Probably computationally expensive to calculate all Fib numbers first, so
  might be better to check digit length of each generated Fib number, then
  return the index once it's valid

Data Structure(s):
- array, to hold Fibonacci numbers

Abstraction:
- Until Fib number's length == given length
  - Calculate a Fib number
  - Check to see if it contains needed number of digits
    - If so, grab index
    - Else, repeat the loop

Examples:

find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847
=end

=begin
Note:

Below was my original attempt. Apparently Ruby isn't great at handling deep
recursion problems, so the provided solution (shown below) uses brute force
instead.

def fibonacci(num)
  if num < 2
    num
  else
    fibonacci(num - 1) + fibonacci(num - 2)
  end
end

def find_fibonacci_index_by_length(digits)
  fib_length = 0
  index = 1
  loop do
    fib_num = fibonacci(index)

    break if fib_num.to_s.size == digits 
    index += 1
  end

  index
end
=end

def find_fibonacci_index_by_length(number_digits)
  first = 1
  second = 1
  index = 2

  loop do
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= number_digits

    first = second
    second = fibonacci
  end

  index
end

p find_fibonacci_index_by_length(2)          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3)         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10)
p find_fibonacci_index_by_length(100)
p find_fibonacci_index_by_length(1000)
p find_fibonacci_index_by_length(10000)
