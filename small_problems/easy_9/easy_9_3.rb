=begin
Write a method that takes a number as an argument. If the argument is a positive
number, return the negative of that number. If the number is 0 or negative,
return the original number.

Inputs:
- integer

Outputs:
- integer

Requirements:
- if argument is positive, return the negative
- if argument is 0 or negative, return the value of the argument

Questions:
- How do you handle non-integer or empty arguments?

Abstraction:
- If argument integer is greater than zero, return argument * -1
- Else, return the argument

Examples:

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby
=end

def negative(num)
  num > 0 ? num * -1 : num
end


p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby

=begin
Alternate solution:

def negative(number)
  -number.abs
end

Takeaway:
The above solution is pithier, but I would argue that it's less intuitive.
=end
