=begin
Link to exercise:
https://launchschool.com/lessons/a0f3cd44/assignments/9e75343c
=end

VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(msg)
  Kernel.puts("=> #{msg}")
end

def display_result(choice_1, choice_2)
  if (choice_1 == 'rock' && choice_2 == 'scissors') ||
      (choice_1 == 'paper' && choice_2 == 'rock') ||
      (choice_1 == 'scissors' && choice_2 == 'paper')
    prompt("You won!")
  elsif (choice_1 == 'rock' && choice_2 == 'paper') ||
        (choice_1 == 'paper' && choice_2 == 'scissors') ||
        (choice_1 == 'scissors' && choice_2 == 'rock')
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = Kernel.gets().chomp()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample()

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  display_result(choice, computer_choice)

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing. Goodbye!")
