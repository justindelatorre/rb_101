=begin
The original instructions can be found here:
https://launchschool.com/lessons/a0f3cd44/assignments/1540db7b

Build a command line calculator program that
does the following:

- asks for two numbers
- asks for the type of operation to perform:
  add, subtract, multiply or divide
- displays the result

Use the Kernel.gets() method to retrieve user
input, and use Kernel.puts() method to display
output. Remember that Kernel.gets() includes the
newline, so you have to call chomp() to remove it:
Kernel.gets().chomp().
=end

# Request two numbers from the user
Kernel.puts("Please provide a number:")
num_1 = Kernel.gets().chomp().to_f()

Kernel.puts("Please provide another number:")
num_2 = Kernel.gets().chomp().to_f()

# Ask the user for a type of operation
Kernel.puts("Choose one: add, subtract, multiply, divide:")
operation = Kernel.gets().chomp().to_s()

# Perform the calculation and print the
# result to the console
if operation == 'add'
	Kernel.puts("#{num_1} + #{num_2} = #{num_1 + num_2}")
elsif operation == 'subtract'
	Kernel.puts("#{num_1} - #{num_2} = #{num_1 - num_2}")
elsif operation == 'multiply'
	Kernel.puts("#{num_1} * #{num_2} = #{num_1 * num_2}")
# Ensure that no ZeroDivisionError is thrown
elsif operation == 'divide' && num_2 != 0.0
	Kernel.puts("#{num_1} / #{num_2} = #{num_1 / num_2}")
else
	Kernel.puts("That's not a valid operation.")
end
