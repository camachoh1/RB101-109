require 'pry'

VALUES = ["A", "2", "3", "4", "5", "6", "7", "8", "9", "10", "J", "Q", "K"]
SUITS = ["Hearts", "Spades", "Clubs", "Diamonds"]
MAX_SCORE = 21
DEALER_MAX_SCORE = 17
CHAMPION_SCORE = 5

def initialize_deck
  VALUES.product(SUITS).shuffle
end

def prompt(msg)
  puts "=> #{msg}"
end

def rules
  rules = <<~MSG
  Rules of Twenty-One:
  --------------------------------------------
  - The goal of Twenty-One is to try to get as close to 21 as possible, without going over. If you go over 21, it's a "bust" and you lose. 
  
  - Win 5 games to become the Champion!
  --------------------------------------------
  MSG
  rules
end

def welcome_screen
  puts "------------------------------------"
  prompt "    *** Lets play 21! ***"
  prompt "*** Press enter to continue ***"
  puts "------------------------------------"
  gets.chomp
  system 'clear'
  prompt(rules)
  prompt "*** Press enter to start! ***"
  gets.chomp
end

def deal_cards(deck)
  deck.pop(2)
end

def total(cards)
  values = cards.map { |card| card[0] }

  sum = 0
  values.each do |value|
    if value == "A"
      sum += 11
    elsif value.to_i == 0
      sum += 10
    else
      sum += value.to_i
    end
  end

  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > MAX_SCORE
  end

  sum
end

def busted?(total)
  total > MAX_SCORE
end

def display_hand(hand, player)
  puts "---------------------------"
  prompt("#{player} have:")
  hand.each do |card|
    prompt("#{card[0]} of #{card[1]}")
  end
  puts "---------------------------"
end

def display_initial_deal(player_hand, dealer_hand, player_total)
  prompt("Dealer has:")
  prompt "#{dealer_hand[0][0]} of #{dealer_hand[0][1]} and unknown card"

  display_hand(player_hand, "Player")
  prompt("your current total is #{player_total}")
  puts "----------------------------"
end

def player_choice
  prompt("would you like to (H)it or (S)tay?")
  choice = gets.chomp.downcase
  if %w(h hit s stay).include?(choice)
    return choice
  end
  prompt("Invalid input. Please select 'H' or 'S' to continue.")
end

def player_hit(player_hand, deck)
  player_hand << deck.pop
  display_hand(player_hand, "player")
end

def display_player_stay(player_total)
  prompt("You stayed at: #{player_total}")
end

def display_player_bust
  prompt("You busted!")
  prompt("Dealer wins!")
end

def dealer_stay(dealer_total)
  dealer_total >= DEALER_MAX_SCORE
end

def dealer_hit(dealer_hand, deck)
  system 'clear'
  prompt("dealer hits!")
  dealer_hand << deck.pop
  display_hand(dealer_hand, "dealer")
end

def display_dealer_bust
  prompt("Dealer busted!")
  prompt("You win!")
end

def display_dealer_stay(dealer_total)
  prompt("Dealer stays at: #{dealer_total}")
end

def busted_end_game(player_total, dealer_total, score)
  if busted?(dealer_total) || busted?(player_total)
    return if finished?(score)
  end
end

def check_winner(player_total, dealer_total)
  if player_total > MAX_SCORE
    :player_busted
  elsif dealer_total > MAX_SCORE
    :dealer_busted
  elsif player_total > dealer_total
    :player
  elsif dealer_total > player_total
    :dealer
  else
    :tie
  end
end

def display_winner(player_total, dealer_total)
  result = check_winner(player_total, dealer_total)

  if result == :player_busted
    display_player_bust
  elsif result == :dealer_busted
    display_dealer_bust
  elsif result == :player
    prompt "You win!"
  elsif result == :dealer
    prompt "Dealer wins!"
  else
    prompt "Its a tie!"
  end
end

def end_of_round_total(player_total, dealer_total)
  display_player_stay(player_total)
  display_dealer_stay(dealer_total)
  display_winner(player_total, dealer_total)
end

def play_again?
  choice = ' '
  loop do
    prompt "Would you like to play again? (Y/N)"
    choice = gets.chomp.downcase
    break if ['y', 'n'].include?(choice)
    prompt "Invalid input. Please try again!"
  end
  if choice == 'n'
    !(choice == 'n')
  else
    true
  end
end

def keep_score(check_winner, score)
  if check_winner == :player || check_winner == :dealer_busted
    score['Player'] += 1
  elsif check_winner == :dealer || check_winner == :player_busted
    score['Dealer'] += 1
  end
  score
end

def finished?(score)
  score['Player'] == CHAMPION_SCORE ||
    score['Dealer'] == CHAMPION_SCORE
end

def display_score(score)
  prompt "Your score #{score['Player']} - Dealer #{score['Dealer']}"
end

def champion(score)
  if score['Player'] > score['Dealer']
    puts "----------------------------------"
    prompt "*** Congratulations! You are the Champion! ***"
    puts "----------------------------------"
  elsif score['Dealer'] > score['Player']
    puts "----------------------------------"
    prompt "*** Dealer is the champion! ***"
    puts "----------------------------------"
  end
end

def game_over(player_total, dealer_total, score)
  end_of_round_total(player_total, dealer_total)
  keep_score(check_winner(player_total, dealer_total), score)
  display_score(score)
end

# rubocop:disable Metrics/MethodLength,  Metrics/AbcSize
def main
  score = {}

  loop do
    system 'clear'
    score = { 'Player' => 0, 'Dealer' => 0 }
    welcome_screen

    loop do
      system 'clear'
      deck = initialize_deck
      player_hand = deal_cards(deck)
      dealer_hand = deal_cards(deck)

      player_total = total(player_hand)
      dealer_total = total(dealer_hand)

      display_initial_deal(player_hand, dealer_hand, player_total)

      # Player's turn
      loop do
        choice = player_choice

        if ['h', 'hit'].include?(choice)
          system 'clear'
          player_hit(player_hand, deck)
          player_total = total(player_hand)
          prompt("your current total is #{player_total}")
          puts "----------------------------"
        end

        break if ['s', 'stay'].include?(choice) || busted?(player_total)
      end

      if busted_end_game(player_total, dealer_total, score)
        game_over(player_total, dealer_total, score)
        play_again? ? next : return
      end

      # Dealer turn
      loop do
        break if dealer_stay(dealer_total)

        dealer_hit(dealer_hand, deck)
        dealer_total = total(dealer_hand)
        prompt("dealer current total is #{dealer_total}")
        puts "----------------------------"
      end

      if busted_end_game(player_total, dealer_total, score)
        game_over(player_total, dealer_total, score)
        play_again? ? next : return
      end

      # Both players stay
      system 'clear'
      game_over(player_total, dealer_total, score)
      if finished?(score)
        break
      end
      return if play_again? == false
    end
    system 'clear'
    if finished?(score)
      champion(score)
      return unless play_again?
    end
  end
end
# rubocop:enable Metrics/MethodLength,  Metrics/AbcSize

main
prompt "Thanks for playing 21, Good Bye!"
