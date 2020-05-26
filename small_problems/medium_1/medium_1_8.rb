=begin
Write a recursive method that computes the nth Fibonacci number, where nth is
an argument to the method.

Inputs:
- Integer

Outputs:
- Integer

Data Structure(s):
- N/A

Rules:
  Explicit:
  - Method must employ recursion.

  Implicit:
  - N/A

Clarifications:
- How do we handle invalid arguments, e.g. non-Integer, negative, etc.?

Algorithm:
- If argument n is less than 2, return 1
- Else, return the sum of fib(n) + fib(n - 1)

Examples:

fibonacci(1) == 1
fibonacci(2) == 1
fibonacci(3) == 2
fibonacci(4) == 3
fibonacci(5) == 5
fibonacci(12) == 144
fibonacci(20) == 6765
=end

def fibonacci(n)
  if n <= 2
    1
  else
    fibonacci(n - 1) + fibonacci(n - 2)
  end
end

p fibonacci(1) == 1
p fibonacci(2) == 1
p fibonacci(3) == 2
p fibonacci(4) == 3
p fibonacci(5) == 5
p fibonacci(12) == 144
p fibonacci(20) == 6765
