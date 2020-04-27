=begin
What is the output of the following code?

answer = 42

def mess_with_it(some_number)
  some_number += 8
end

new_answer = mess_with_it(answer)

p answer - 8

Solution:
=> 34

Explanation:
Incrementing an argument value using += in a method after a method call
changes the REFERENCE COPY created during method invocation, rather than the
original object passed in as an argument. As such, answer stays the same (but
the program outputs 34 since it subtracts 8), while new_answer becomes 50.
=end
