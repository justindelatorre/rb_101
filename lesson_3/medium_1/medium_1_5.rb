=begin
Alyssa asked Ben to write up a basic implementation of a Fibonacci calculator.
A user passes in two numbers, and the calculator will keep computing the
sequence until some limit is reached.

Ben coded up this implementation but complained that as soon as he ran it, he
got an error. Something about the limit variable. What's wrong with the code?

limit = 15

def fib(first_num, second_num)
  while first_num + second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1)
puts "result is #{result}"

Solution:
The fib method tries to access the limit variable without passing it as an
argument. The error can be fixed by adding limit as a parameter and providing
it as an argument during method invocation.
=end

limit = 3

def fib(first_num, second_num, lim) # modified to prevent variable shadowing
  while first_num + second_num < lim # modified
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, limit)
puts "result is #{result}"
