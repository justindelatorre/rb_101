=begin
Link to exercise:
https://launchschool.com/lessons/a0f3cd44/assignments/4f8be124
=end

VALID_CHOICES = {
  'r' => 'rock',
  'p' => 'paper',
  'x' => 'scissors',
  'l' => 'lizard',
  's' => 'Spock'
}
CHOICES_PROMPT = <<-MSG
Choose one:
r: rock
p: paper
x: scissors
l: lizard
s: Spock
MSG
WIN_CONDITIONS = {
  'r' => ['x', 'l'],
  'p' => ['r', 's'],
  'x' => ['p', 'l'],
  'l' => ['s', 'p'],
  's' => ['r', 'x']
}
WIN_TOTAL = 3

def prompt(msg)
  Kernel.puts("=> #{msg}")
end

def win?(first, second)
  WIN_CONDITIONS[first] && WIN_CONDITIONS[first].include?(second)
end 

def get_choice
  prompt(CHOICES_PROMPT)
  choice = Kernel.gets().chomp()
end

def display_result(player, computer)
  if win?(player, computer)
    prompt("You won!")
  elsif win?(computer, player)
    prompt("Computer won!")
  else
    prompt("It's a tie!")
  end
end

def declare_winner(player_count, computer_count)
  if player_count == WIN_TOTAL
    prompt("You're the grand winner!")
  elsif computer_count == WIN_TOTAL
    prompt("Better luck next time!")
  else
    prompt("No grand winner this time!")
  end
end

player_wins = 0
computer_wins = 0

loop do
  choice = ''
  loop do
    # Get choice from user
    choice = get_choice

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.keys.sample()

  prompt("You chose: #{VALID_CHOICES[choice]}; "\
         "Computer chose: #{VALID_CHOICES[computer_choice]}")

  display_result(choice, computer_choice)

  if win?(choice, computer_choice)
    player_wins += 1
  elsif win?(computer_choice, choice)
    computer_wins += 1
  end

  prompt("You: #{player_wins}; Computer: #{computer_wins}")

  break if player_wins == WIN_TOTAL || computer_wins == WIN_TOTAL

  prompt("Do you want to play again?")
  answer = Kernel.gets().chomp()
  
  if answer.downcase().start_with?('y')
    Kernel.system('clear') || Kernel.system('cls')
  end
  break unless answer.downcase().start_with?('y')
end

declare_winner(player_wins, computer_wins)

prompt("Thank you for playing. Goodbye!")
