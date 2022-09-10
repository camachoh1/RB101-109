WINNING_MOVES = {
  'rock' => ['scissors', 'lizard'],
  'paper' => ['rock', 'spock'],
  'scissors' => ['paper', 'lizard'],
  'lizard' => ['paper', 'spock'],
  'spock' => ['rock', 'scissors']
}

def prompt(message)
  puts "=> #{message}"
end

def clear_screen
  system('clear') || system('cls')
end

def welcome_message
  welcome = <<~MSG
  Welcome to Rock, Paper Scissors,Lizard,Spock!
  --------------------------------------------

  *~*~*~*~ Press any key to start! *~*~*~*~*~*~
  MSG

  prompt(welcome)
end

def rules
  rules = <<~MSG
  -------------------------------------------- 
  The rules are very simple:
  
  Scissors cuts Paper cover Rock crushes
  Lizard poison Spock smashes Scissors
  decapitates Lizard eats Paper disproves
  Spock vaporizes Rock crushes Scissors.
  
  Ready? Press any key to continue.
  --------------------------------------------
  MSG

  prompt(rules)
end

def user_choice?(input)
  case input
  when 'r'
    return 'rock'
  when 'p'
    return 'paper'
  when 's'
    return 'scissors'
  when 'l'
    return 'lizard'
  when 'sp'
    return 'spock'
  end
  input
end

def get_user_choice
  prompt("Choose your weapon!:
  'R'(rock), 'P'(paper), 'S'(scissors), 'L'(lizard) 'SP'(spock)")

  choice = user_choice?(gets.chomp.downcase)
  valid_choice = WINNING_MOVES.keys.include?(choice)

  if !valid_choice
    prompt("That's not a valid choice!")
    return get_user_choice
  end
  choice
end

def computer_win?(computer_choice, player_choice)
  WINNING_MOVES[computer_choice].include?(player_choice)
end

def player_win?(player_choice, computer_choice)
  WINNING_MOVES[player_choice].include?(computer_choice)
end

def display_winner(your_choice, computer_choice)
  if player_win?(your_choice, computer_choice)
    prompt("Nicely done, You Win!")
  elsif computer_win?(computer_choice, your_choice)
    prompt("Boo! Computer Wins.")
  else
    prompt("It's a tie!!")
  end
end

def keep_score(score, your_choice, computer_choice)
  if player_win?(your_choice, computer_choice)
    score[0] += 1
  elsif computer_win?(computer_choice, your_choice)
    score[1] += 1
  else
    prompt("No one wins!")
  end
end

def display_score(score)
  prompt("You #{score[0]} -- CPU #{score[1]}")
end

def finished?(score)
  score[0] == 3 || score[1] == 3
end

def champion(score)
  if score[0] > score[1]
    prompt("Congratulations! You are the ultimate champion!")
  elsif score[0] < score[1]
    prompt("The computer is the ultimate champion...Skynet is coming.")
  end
end
# Welcome screen/rules:
clear_screen
welcome_message
gets.chomp
clear_screen
rules
gets.chomp
# main loop start:
loop do
  score = [0, 0]
  loop do
    choice = get_user_choice
    clear_screen
    computer_choice = WINNING_MOVES.keys.sample
    prompt("You chose #{choice}. The computer chose #{computer_choice}")
    sleep(1)
    display_winner(choice, computer_choice)
    keep_score(score, choice, computer_choice)
    display_score(score)
    break if finished?(score)
  end
  sleep(1)
  champion(score)

  prompt("Do you want to play again? ('Y' if yes or any other key to exit.)")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
  clear_screen
end

prompt("Thanks for playing, Good bye!")
