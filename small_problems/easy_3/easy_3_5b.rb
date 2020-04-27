=begin
What if we wanted to generalize this method to a "power to the n" type method:
cubed, to the 4th power, to the 5th, etc. How would we go about doing so while
still using the multiply method?

In-depth explanation of code:
https://www.notion.so/jaydelatorre/Small-Problems-a5b9cdc336b043ed800a0c4a2944def3#3f6e4d24423045448b58ad1225e2cf81
=end

def multiply(a, b)
  a * b
end

def exponential(base, power)
  if power == 0
    1
  else
    multiply(base, exponential(base, power - 1))
  end
end

puts('Please enter a base:')
b = gets.chomp.to_i

puts('Please enter a power:')
p = gets.chomp.to_i

puts("#{b} raised to the power of #{p} is #{exponential(b, p)}.")
