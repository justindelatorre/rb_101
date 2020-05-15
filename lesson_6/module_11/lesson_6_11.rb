=begin
https://launchschool.com/lessons/de05b300/assignments/1b9810ab
=end

SUITS = %w(clubs diamonds hearts spades)
VALUES = %w(ace 2 3 4 5 6 7 8 9 10 jack queen king)
DIVIDER = '=' * 50
BUST_LIMIT = 21
DEALER_LIMIT = 17
WINS = 3

require 'yaml'
MESSAGES = YAML.load_file('twentyone.yml')

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck
  deck = []

  SUITS.each do |suit|
    VALUES.each do |value|
      deck.push([suit, value])
    end
  end

  deck.shuffle
end

def initialize_hand!(deck)
  hand = []

  hand << deck.pop << deck.pop

  hand
end

def total(hand)
  values = hand.map { |card| card[1] }

  score = 0
  values.each do |value|
    if value == 'ace'
      score += 11
    elsif value.to_i == 0
      score += 10
    else
      score += value.to_i
    end
  end

  values.select { |value| value == 'ace' }.count.times do
    score -= 10 if score > 21
  end

  score
end

def display_initial_hands(player, dealer)
  prompt("Dealer has: #{dealer[0][1].capitalize} and ?")
  prompt("You have: #{player[0][1].capitalize} and #{player[1][1].capitalize}")
end

def display_cards(hand)
  str = ''

  hand.each_with_index do |card, idx|
    if idx == hand.size - 1
      str << "and #{card[1].capitalize}"
    else
      str << "#{card[1].capitalize}, "
    end
  end

  str
end

def busted?(score)
  score > BUST_LIMIT
end

def print_results(dealer_hand, dealer_score, player_hand, player_score)
  puts DIVIDER
  prompt("Dealer has #{display_cards(dealer_hand)}, for a score of "\
         "#{dealer_score}.")
  prompt("You have #{display_cards(player_hand)}, for a score of "\
         "#{player_score}.")
end

def select_winner(player, dealer)
  if player > dealer
    'player'
  elsif player < dealer
    'dealer'
  else
    'tie'
  end
end

def count_wins(winner_str, player, dealer)
  if winner_str == 'player'
    player += 1
  elsif winner_str == 'dealer'
    dealer += 1
  end

  return player, dealer
end

def print_winner(winner_str)
  puts DIVIDER
  if winner_str == 'player'
    prompt(MESSAGES['player_match_win'])
  elsif winner_str == 'dealer'
    prompt(MESSAGES['dealer_match_win'])
  else
    prompt(MESSAGES['match_tie'])
  end
end

def print_games_won(player, dealer)
  puts DIVIDER
  prompt("Games Won - You: #{player} | Dealer: #{dealer}")
end

def play_again?
  puts DIVIDER
  prompt(MESSAGES['play_again'])
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

def print_grand_winner(player, dealer)
  if player == WINS
    prompt(MESSAGES['player_grand_win'])
  elsif dealer == WINS
    prompt(MESSAGES['dealer_grand_win'])
  end
end

player_wins = 0
dealer_wins = 0

loop do
  system('clear') || system('cls')
  prompt(MESSAGES['welcome'])

  puts DIVIDER
  deck = initialize_deck

  player_hand = initialize_hand!(deck)
  dealer_hand = initialize_hand!(deck)

  player_score = total(player_hand)
  dealer_score = total(dealer_hand)

  display_initial_hands(player_hand, dealer_hand)

  # Player's Turn
  loop do
    answer = nil

    loop do
      puts DIVIDER
      prompt(MESSAGES['hit_or_stay'])
      answer = gets.chomp.downcase
      break if ['h', 's'].include?(answer)
      prompt(MESSAGES['invalid_hit_or_stay'])
    end

    if answer == 'h'
      player_hand << deck.pop
      player_score = total(player_hand)
      puts DIVIDER
      prompt(MESSAGES['player_hit'])
      prompt("Your cards are now: #{display_cards(player_hand)}")
      prompt("Your total is now: #{player_score}")
    end

    break if busted?(player_score) || answer == 's'
  end

  print_results(dealer_hand, dealer_score, player_hand, player_score)

  if busted?(player_score)
    player_wins, dealer_wins = count_wins('dealer', player_wins, dealer_wins) 
    prompt(MESSAGES['player_bust'])
    print_games_won(player_wins, dealer_wins)
    play_again? ? next : break
  else
    prompt("You chose to stay at #{player_score}!")
  end

  puts DIVIDER
  # Dealer's Turn
  loop do
    dealer_score = total(dealer_hand)
    break if dealer_score >= DEALER_LIMIT

    prompt(MESSAGES['dealer_hit'])
    dealer_hand << deck.pop

    prompt("Dealer's cards are now: #{display_cards(dealer_hand)}")
  end

  print_results(dealer_hand, dealer_score, player_hand, player_score)

  if busted?(dealer_score)
    player_wins, dealer_wins = count_wins('player', player_wins, dealer_wins) 
    prompt(MESSAGES['dealer_bust'])
    print_games_won(player_wins, dealer_wins)
    play_again? ? next : break
  else
    prompt("Dealer stays at #{dealer_score}")
  end

  print_results(dealer_hand, dealer_score, player_hand, player_score)

  winner = select_winner(player_score, dealer_score)

  player_wins, dealer_wins = count_wins(winner, player_wins, dealer_wins)

  print_winner(winner)

  print_games_won(player_wins, dealer_wins)

  break unless play_again?
end

print_grand_winner(player_wins, dealer_wins)

puts DIVIDER
prompt(MESSAGES['goodbye'])
