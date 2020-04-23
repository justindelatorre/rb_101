=begin
Write a method that takes one argument, a positive integer, and returns a string
of alternating 1s and 0s, always starting with 1. The length of the string
should match the given integer.

Examples:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

The tests above should print true.
=end

def stringy(num)
  binary_str = ''

  # Set marker to begin with 1
  is_one = true

  num.times do
    num_to_add =  is_one ? '1' : '0'
    binary_str << num_to_add

    is_one = !is_one
  end

  binary_str
end

puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'
