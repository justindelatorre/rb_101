=begin
What if we wanted to generalize this method to a "power to the n" type method:
cubed, to the 4th power, to the 5th, etc. How would we go about doing so while
still using the multiply method?
=end

def multiply(a, b)
  a * b
end

def exponential(base, power)
  if power == 1
    multiply(base, power)
  elsif power == 2
    multiply(base, base)
  else
    multiply(multiply(base, power - 1), multiply(base, power - 2))
  end
end

puts('Please enter a base:')
b = gets.chomp.to_i

puts('Please enter a power:')
p = gets.chomp.to_i

puts("#{b} raised to the power of #{p} is #{exponential(b, p)}.")
