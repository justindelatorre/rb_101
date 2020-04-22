=begin
https://launchschool.com/lessons/a0f3cd44/assignments/4ad62c1d

Link to formal pseudo-code:
https://www.notion.so/jaydelatorre/Lesson-2-Small-Programs-b1289a84a958411db13f9021e88339a1#85f306a9453d49118d313dc16b8666c3

TA feedback:
https://launchschool.com/posts/0d420f40i

NOTE: As-of 2020 Apr 22, Rubocop says the cyclomatic complexity of the
      valid_input? method is too high. This means that it's probably nesting
      way too many boolean methods into the evaluation path.
=end

require 'yaml'
MESSAGES = YAML.load_file("mortgage_calculator_messages.yml")

def prompt(msg)
  Kernel.puts("=> #{msg}")
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

def positive?(num)
  num.to_f() > 0.0
end

def retrieve_input(input_type)
  prompt(MESSAGES[input_type])
  input = nil
  loop do
    input = gets().chomp()
    break if valid_input?(input, input_type)
    prompt(MESSAGES["invalid_#{input_type}"])
  end
  input
end

def valid_input?(input, input_type)
  case input_type
  when 'loan_amount'
    number?(input) && positive?(input)
  when 'apr'
    number?(input) && positive?(input)
  when 'loan_duration'
    integer?(input) && positive?(input)
  end
end

def calculate_monthly_payment(loan_amount, apr_converted, duration)
  # Convert given values to monthly interest rate and months of loan duration
  monthly_rate = apr_converted / 12.0
  loan_duration_months = duration.to_i() * 12

  # Calculate monthly payment based on given and calculated values and return
  # value
  loan_amount.to_f() *
    (monthly_rate / (1 - (1 + monthly_rate)**(-loan_duration_months)))
end

keep_going = true

prompt(MESSAGES['welcome'])

while keep_going == true

  # Solicit loan amount, APR, and loan duration in years
  loan_amount = retrieve_input('loan_amount')

  apr = retrieve_input('apr').to_f() / 100.0

  loan_duration_years = retrieve_input('loan_duration')

  monthly_payment = calculate_monthly_payment(loan_amount, apr,
                                              loan_duration_years)

  # Print monthly payment amount
  prompt("Based on the provided information, the monthly payment is "\
         "#{monthly_payment.round(2)}.")

  # Ask user if they would like to make another calculation
  answer = ''
  loop do
    prompt(MESSAGES['again'])
    answer = Kernel.gets().chomp()

    break if answer.downcase() == 'y' || answer.downcase() == 'n'
    prompt(MESSAGES['invalid_answer'])
  end

  # Clear screen after each round of calculation
  if answer.downcase() == 'y'
    Kernel.system("clear") || Kernel.system("cls")
  end

  break unless answer.downcase() == 'y'
end

prompt(MESSAGES['goodbye'])
