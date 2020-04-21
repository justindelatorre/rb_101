=begin
https://launchschool.com/lessons/a0f3cd44/assignments/7add52d9
=end

require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

def prompt(message)
	Kernel.puts("=> #{message}")
end

def integer?(num)
  num.to_i().to_s() == num
end

def float?(num)
  num.to_f().to_s() == num
end

def number?(num)
	integer?(num) || float?(num) 
end

prompt MESSAGES['welcome'] 

name = ''
loop do
	name = Kernel.gets().chomp()

	if name.empty?()
		prompt MESSAGES['valid_name'] 
	else
		break
	end
end

def operation_to_message(op)
	word = case op
         when 'add'
           'Adding'
         when 'subtract'
           'Subtracting'
         when 'multiply'
           'Multiplying'
         when 'divide'
           'Dividing' 
         end 

  word
end

num_1 = ''
num_2 = ''

prompt "Hi #{name}!"

loop do # main loop
	# Request two numbers from the user
	loop do
		prompt MESSAGES['first_num'] 
		num_1 = Kernel.gets().chomp()

		if integer?(num_1)
			break
		else
			prompt MESSAGES['invalid_num'] 
		end
	end

	loop do
		prompt MESSAGES['second_num']
		num_2 = Kernel.gets().chomp()

		if integer?(num_2)
			break
		else
			prompt MESSAGES['invalid_num'] 
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
			prompt MESSAGES['invalid_op']
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

	prompt MESSAGES['again'] 
	answer = Kernel.gets().chomp()
	break unless answer.downcase().start_with?('y')
end

prompt MESSAGES['goodbye'] 
