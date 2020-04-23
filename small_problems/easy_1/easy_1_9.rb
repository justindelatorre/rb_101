=begin
Write a method that takes one argument, a positive integer, and returns the sum
of its digits.

Examples:
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

The tests above should print true.

For a challenge, try writing this without any basic looping constructs (while,
until, loop, and each).
=end

def sum(num)
  total = 0
  num.to_s.each_char { |c| total += c.to_i }

  total
end

puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45

=begin
Alternate construction:

def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

Takeaway:
String#chars + Enumerable#map are equivalent to String#each_char.
=end
