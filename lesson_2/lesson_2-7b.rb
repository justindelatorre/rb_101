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
case operation
	when 'add'
		Kernel.puts("#{num_1} + #{num_2} = #{num_1 + num_2}")
	when 'subtract'
		Kernel.puts("#{num_1} - #{num_2} = #{num_1 - num_2}")
	when 'multiply'
		Kernel.puts("#{num_1} * #{num_2} = #{num_1 * num_2}")
	# Ensure that no ZeroDivisionError is thrown
	##
	# NOTE: The reason that this failed is because
	#				case statement is written so it exclusively
	#				evaluates the value of the operation
	#				variable. The code below adds a second
	#				condition. To fix this, you'll need to
	#				generalize the case statement, i.e.
	#				
	#				case
	#				when operation == 'add'
	#				...
	#				when operation == 'divide' && num_2 != 0.0				
	when 'divide' && num_2 != 0.0
		Kernel.puts("#{num_1} / #{num_2} = #{num_1 / num_2}")
	else
		Kernel.puts("That's not a valid operation.")
end
