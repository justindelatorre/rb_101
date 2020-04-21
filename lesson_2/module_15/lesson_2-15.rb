=begin
https://launchschool.com/lessons/a0f3cd44/assignments/4ad62c1d

Link to formal pseudo-code:
https://www.notion.so/jaydelatorre/Lesson-2-Small-Programs-b1289a84a958411db13f9021e88339a1#85f306a9453d49118d313dc16b8666c3
=end

# TODO: Write methods to check validity of number values
# TODO: Convert number strings to integers / floats
# TODO: Create method making sure no submitted numbers are negative

def prompt(msg)
  Kernel.puts("=> #{msg}")
end

keep_going = true

prompt("Welcome to the Mortgage Calculator!")

while keep_going == true

  # Solicit loan amount, APR, and loan duration in years
  prompt("Please enter the full loan amount:")
  loan_amount = Kernel.gets().chomp()

  prompt("Please enter the Annual Percentage Rate (APR):")
  apr = Kernel.gets().chomp()

  prompt("Please enter the loan duration in years:")
  loan_duration_years = Kernel.gets().chomp()

  # Convert given values to monthly interest rate and 
  # months of loan duration
  monthly_interest_rate = apr / 12
  loan_duration_months = loan_duration_years * 12

  # Calculate monthly payment based on given and
  # calculated values
  monthly_payment = loan_amount * (monthly_interest_rate / (1 - (1 + monthly_interest_rate)**(-loan_duration_months)))

  # Print monthly payment amount
  prompt("Based on the provided information, the monthly payment is #{monthly_payment}.")

  # Ask user if they would like to make another calculation
  prompt("Would you like to calculate another monthly payment?")
  answer = Kernel.gets().chomp()

  break unless answer.downcase().starts_with?('y')
end

prompt("Thank you for using the Mortgage Calculator!")
