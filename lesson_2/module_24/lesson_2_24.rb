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
  choice = ''

  loop do
    prompt(CHOICES_PROMPT)
    choice = Kernel.gets().chomp().downcase()

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt(MESSAGES['invalid_choice'])
    end
  end

  choice
end

def show_choices(player, computer)
  prompt("You chose: #{VALID_CHOICES[player]}; "\
         "Computer chose: #{VALID_CHOICES[computer]}")
end

def determine_winner(player, computer)
  if win?(player, computer)
    'player'
  elsif win?(computer, player)
    'computer'
  else
    'tie'
  end
end

def display_result(winner)
  if winner == 'player'
    prompt(MESSAGES['you_win'])
  elsif winner == 'computer'
    prompt(MESSAGES['computer_win'])
  else
    prompt(MESSAGES['tie'])
  end
end

def increment_wins(winner, player_count, computer_count)
  if winner == 'player'
    return player_count.next, computer_count
  elsif winner == 'computer'
    return player_count, computer_count.next
  else
    return player_count, computer_count
  end
end

def show_wins(player_count, computer_count)
  prompt("You: #{player_count}; Computer: #{computer_count}")
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

def collect_play_again_answer
  input = ''
  loop do
    prompt(MESSAGES['again'])
    input = Kernel.gets().chomp()

    break if input.downcase() == 'y' || input.downcase() == 'n'
    prompt(MESSAGES['invalid_choice'])
  end

  input
end

player_wins = 0
computer_wins = 0

# Main loop
loop do
  choice = input_choice

  computer_choice = VALID_CHOICES.keys.sample()

  Kernel.system('clear') || Kernel.system('cls')

  show_choices(choice, computer_choice)

  winner_str = determine_winner(choice, computer_choice)

  display_result(winner_str)

  player_wins, computer_wins = increment_wins(winner_str, player_wins,
                                              computer_wins)

  show_wins(player_wins, computer_wins)

  break if player_wins == WIN_TOTAL || computer_wins == WIN_TOTAL

  answer = collect_play_again_answer

  Kernel.system('clear') || Kernel.system('cls') if answer == 'y'

  break unless answer == 'y'
end

declare_winner(player_wins, computer_wins)

prompt(MESSAGES['goodbye'])
