=begin
https://launchschool.com/lessons/a0f3cd44/assignments/fcd8a299
=end

def prompt(message)
	Kernel.puts("=> #{message}")
end

def valid_number?(num)
	num.to_i() != 0
end

prompt "Welcome to Calculator! Enter your name:"

name = ''
loop do
	name = Kernel.gets().chomp()

	if name.empty?()
		prompt "Make sure to use a valid name."
	else
		break
	end
end

def operation_to_message(op)
	case op
	when 'add'
		'Adding'
	when 'subtract'
		'Subtracting'
	when 'multiply'
		'Multiplying'
	when 'divide'
		'Dividing' 
	end 
end

num_1 = ''
num_2 = ''

prompt "Hi #{name}!"

loop do # main loop
	# Request two numbers from the user
	loop do
		prompt "Please provide a number:"
		num_1 = Kernel.gets().chomp()

		if valid_number?(num_1)
			break
		else
			prompt "Hmm... that doesn't look like a valid number."
		end
	end

	loop do
		prompt "Please provide another number:"
		num_2 = Kernel.gets().chomp()

		if valid_number?(num_2)
			break
		else
			prompt "Hmm... that doesn't look like a valid number."
		end
	end

	# Ask the user for a type of operation
	operation_prompt = <<-MSG # heredoc
	Choose one:
	add
	subtract
	multiply
	divide
	MSG
	prompt operation_prompt
	operation = ''
	
	loop do
		operation = Kernel.gets().chomp().to_s()

		if %w(add subtract multiply divide).include?(operation)
			break
		else
			prompt "Must choose: add, subtract, multiply, divide."
		end
	end

	prompt "#{operation_to_message(operation)} the two numbers..."
	# Perform the calculation and print the
	# result to the console
	##
	# NOTE: The below re-factor is based on
	#				Lesson 2.11.
	result = case operation
					 when 'add'
						 num_1.to_f() + num_2.to_f()
					 when 'subtract'
						 num_1.to_f() - num_2.to_f()
					 when 'multiply'
						 num_1.to_f() * num_2.to_f()
					 else
						 num_1.to_f() / num_2.to_f()
					 end

	prompt "The result is #{result}."

	prompt "Do you want to perform another calculation? (Y/N)"
	answer = Kernel.gets().chomp()
	break unless answer.downcase().start_with?('y')
end

prompt "Thank you for using Calculator. Goodbye!"
