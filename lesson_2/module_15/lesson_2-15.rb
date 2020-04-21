=begin
https://launchschool.com/lessons/a0f3cd44/assignments/4ad62c1d

Link to formal pseudo-code:
https://www.notion.so/jaydelatorre/Lesson-2-Small-Programs-b1289a84a958411db13f9021e88339a1#85f306a9453d49118d313dc16b8666c3
=end

require 'pry'
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

keep_going = true

prompt(MESSAGES['welcome'])

while keep_going == true

  # Solicit loan amount, APR, and loan duration in years
  loan_amount = ''
  loop do
    prompt(MESSAGES['loan_amount'])
    loan_amount = Kernel.gets().chomp()

    break if number?(loan_amount) && positive?(loan_amount)
    prompt(MESSAGES['invalid_num']) 
  end

  apr = ''
  apr_converted = 0.0
  loop do
    prompt(MESSAGES['apr'])
    # Convert the string apr value to a decimal
    apr = Kernel.gets().chomp()
    apr_converted = apr.to_f() / 100.0

    break if number?(apr) && positive?(apr)
    prompt(MESSAGES['invalid_num'])
  end

  loan_duration_years = ''
  loop do
    prompt(MESSAGES['loan_duration'])
    loan_duration_years = Kernel.gets().chomp()

    break if number?(loan_duration_years) && positive?(loan_duration_years)
    prompt(MESSAGES['invalid_num'])
  end

  # Convert given values to monthly interest rate and 
  # months of loan duration
  monthly_interest_rate = apr_converted / 12.0
  loan_duration_months = loan_duration_years.to_f() * 12.0

  # Calculate monthly payment based on given and
  # calculated values
  monthly_payment = loan_amount.to_f() * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_months)))

  # Print monthly payment amount
  prompt("Based on the provided information, the monthly payment is #{monthly_payment.round(2)}.")

  # Ask user if they would like to make another calculation
  prompt(MESSAGES['again'])
  answer = Kernel.gets().chomp()

  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['goodbye'])
