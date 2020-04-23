=begin
Link to exercise:
https://launchschool.com/lessons/a0f3cd44/assignments/4f8be124
=end

require 'yaml'
MESSAGES = YAML.load_file('rpxls_messages.yml')

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
WIN_TOTAL = 5

def prompt(msg)
  Kernel.puts("=> #{msg}")
end

def win?(first, second)
  WIN_CONDITIONS[first] && WIN_CONDITIONS[first].include?(second)
end

def input_choice
  prompt(CHOICES_PROMPT)
  Kernel.gets().chomp()
end

def display_result(player, computer)
  if win?(player, computer)
    prompt(MESSAGES['you_win'])
  elsif win?(computer, player)
    prompt(MESSAGES['computer_win'])
  else
    prompt(MESSAGES['tie'])
  end
end

def declare_winner(player_count, computer_count)
  if player_count == WIN_TOTAL
    prompt(MESSAGES['you_grand_win'])
  elsif computer_count == WIN_TOTAL
    prompt(MESSAGES['computer_grand_win'])
  else
    prompt(MESSAGES['no_grand_win'])
  end
end

player_wins = 0
computer_wins = 0

loop do
  choice = ''
  loop do
    choice = input_choice

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt(MESSAGES['invalid_choice'])
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

  answer = ''
  loop do
    prompt(MESSAGES['again'])
    answer = Kernel.gets().chomp()

    break if answer.downcase() == 'y' || answer.downcase() == 'n'
    prompt(MESSAGES['invalid_choice'])
  end

  if answer.downcase().start_with?('y')
    Kernel.system('clear') || Kernel.system('cls')
  end
  break unless answer.downcase().start_with?('y')
end

declare_winner(player_wins, computer_wins)

prompt(MESSAGES['goodbye'])
