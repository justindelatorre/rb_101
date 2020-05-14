=begin
https://launchschool.com/lessons/de05b300/assignments/b6baf7e6
=end

SUITS = %w(clubs diamonds hearts spades)
VALUES = %w(ace 2 3 4 5 6 7 8 9 10 jack queen king)
BUST_LIMIT = 21
DEALER_LIMIT = 17

def prompt(msg)
  puts "=> #{msg}"
end

def initialize_deck(suits, values)
  deck = []

  suits.each do |suit|
    values.each do |value|
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

def busted?(hand)
  total(hand) > BUST_LIMIT
end

def declare_winner(player, dealer)
  player_score = total(player)
  dealer_score = total(dealer)

  prompt("You have #{player_score} and the dealer has #{dealer_score}.")

  if player_score > dealer_score
    prompt('Congratulations - you won!')
  elsif player_score < dealer_score
    prompt("Unfortunately, you've lost.")
  else
    prompt("It's a tie.")
  end
end

def play_again?
  prompt('Do you want to play again? (y or n)')
  answer = gets.chomp
  answer.downcase.start_with?('y')
end

loop do
  prompt('Welcome to Twenty One!')

  deck = initialize_deck(SUITS, VALUES)

  player_hand = initialize_hand!(deck)
  dealer_hand = initialize_hand!(deck)

  prompt("Dealer has: #{dealer_hand[0][1].capitalize} and ?")
  prompt("You have: #{player_hand[0][1].capitalize} and "\
         "#{player_hand[1][1].capitalize}")

  # Player's Turn
  loop do
    answer = nil

    loop do
      prompt('Will you (h)it or (s)tay?')
      answer = gets.chomp.downcase
      break if ['h', 's'].include?(answer)
      prompt("Sorry. Please enter an 'h' or 's'.")
    end

    if answer == 'h'
      player_hand << deck.pop
      prompt('You chose to hit!')
      prompt("Your cards are now: #{display_cards(player_hand)}")
      prompt("Your total is now: #{total(player_hand)}")
    end

    break if busted?(player_hand) || answer == 's'
  end

  if busted?(player_hand)
    prompt('You busted. You lose.')
    play_again? ? next : break
  else
    prompt("You chose to stay at #{total(player_hand)}!")

  end

  # Dealer's Turn
  loop do
    break if total(dealer_hand) >= DEALER_LIMIT

    prompt('Dealer hits!')
    dealer_hand << deck.pop

    prompt("Dealer's cards are now: #{display_cards(dealer_hand)}")
  end

  if busted?(dealer_hand)
    prompt("Dealer total is now: #{total(dealer_hand)}")
    prompt('Dealer busted. You win.')
    play_again? ? next : break
  else
    prompt("Dealer stays at #{total(dealer_hand)}")
  end

  prompt("Dealer has #{display_cards(dealer_hand)}, for a score of "\
         "#{total(dealer_hand)}.")
  prompt("Player has #{display_cards(player_hand)}, for a score of "\
         "#{total(player_hand)}.")

  declare_winner(player_hand, dealer_hand)

  break unless play_again?
end

prompt('Thanks for playing Twenty One. Goodbye!')
