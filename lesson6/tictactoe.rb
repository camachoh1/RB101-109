
INITIAL_MARKER = ' '
PLAYER_MARKER = 'X'
COMPUTER_MARKER = 'O'
WINNING_LINES =
  [[1, 2, 3], [4, 5, 6], [7, 8, 9]] +
  [[1, 4, 7], [2, 5, 8], [3, 6, 9]] +
  [[1, 5, 9], [3, 5, 7]]
WINNING_SCORE = 5
CENTER_SQUARE = 5
MARKER_MAP = {
  'p' => PLAYER_MARKER,
  'c' => COMPUTER_MARKER,
  'r' => [PLAYER_MARKER, COMPUTER_MARKER].sample
}

def prompt(msg)
  puts "=> #{msg}"
end

def welcome

  prompt "*** Lets Play Tic-Tac-Toe! ***"
  prompt "*** The first to win 5 games will become the Ultimate Champion! ***"
  puts "------------------------------------"

  prompt "Press enter to start playing"
  puts "------------------------------------"

  gets.chomp
  system 'clear'
  prompt "Loading..."
  sleep(2)
end

# rubocop:disable Metrics/MethodLength,  Metrics/AbcSize
def display_board(brd)
  system 'clear'
  prompt "you are a #{PLAYER_MARKER}. Computer is #{COMPUTER_MARKER}."
  puts ""
  puts "      |     |"
  puts "   #{brd[1]}  |  #{brd[2]}  |  #{brd[3]}"
  puts "      |     |"
  puts " -----+-----+-----"
  puts "      |     |"
  puts "   #{brd[4]}  |  #{brd[5]}  |  #{brd[6]}"
  puts "      |     |"
  puts " -----+-----+-----"
  puts "      |     |"
  puts "   #{brd[7]}  |  #{brd[8]}  |  #{brd[9]}"
  puts "      |     |"
end
# rubocop:enable Metrics/MethodLength, Metrics/AbcSize

def initialize_board
  new_board = {}
  (1..9).each { |num| new_board[num] = INITIAL_MARKER }
  new_board
end

def empty_squares(brd)
  brd.keys.select { |num| brd[num] == INITIAL_MARKER }
end

def joinor(arr, delimiter= ', ', word= 'or')
  case arr.size
  when 0 then ' '
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    "#{arr[0..-2].join(delimiter)} #{word} #{arr[-1]}"
  end
end

def who_goes_first?
  first_move = ''
  loop do
    prompt "Please select who goes first: "
    prompt "P: Player, C: Computer or R: Random"
    choice = gets.chomp.downcase

    prompt "Invalid input, please try again!"
    first_move = MARKER_MAP[choice]

    break if %w(p c r).include?(choice)
  end
  first_move
end

def place_piece!(brd, current_player)
  if current_player == PLAYER_MARKER
    player_turn!(brd)
  elsif current_player == COMPUTER_MARKER
    comp_turn!(brd)
  end
end

def alternate_player(current_player)
  if current_player == PLAYER_MARKER
    COMPUTER_MARKER
  elsif current_player == COMPUTER_MARKER
    PLAYER_MARKER
  end
end

def valid_square?(sqr, brd)
  empty_squares(brd).map(&:to_s).include?(sqr)
end

def player_turn!(brd)
  square = ''
  loop do
    prompt "Choose a square (#{joinor(empty_squares(brd))}):"
    square = gets.chomp
    break if valid_square?(square, brd)
    prompt "Sorry, that's not a valid choice."
  end
  brd[square.to_i] = PLAYER_MARKER
end

def make_strategic_move(brd)
  square = nil

  WINNING_LINES.each do |line|
    square = computer_attack_defense(line, brd, COMPUTER_MARKER)
    break if square
  end

  if !square
    WINNING_LINES.each do |line|
      square = computer_attack_defense(line, brd, PLAYER_MARKER)
      break if square
    end
  end
  square
end

def comp_turn!(brd)
  make_strategic_move(brd)

  square = make_strategic_move(brd)

  if !square && empty_squares(brd).include?(CENTER_SQUARE)
    square = CENTER_SQUARE
  end

  if !square
    square = empty_squares(brd).sample
  end

  brd[square] = COMPUTER_MARKER
end

def computer_attack_defense(line, brd, marker)
  if brd.values_at(*line).count(marker) == 2
    brd.select { |k, v| line.include?(k) && v == INITIAL_MARKER }.keys.first
  end
end

def board_full?(brd)
  empty_squares(brd).empty?
end

def someone_won?(brd)
  !!detect_winner(brd)
end

def detect_winner(brd)
  WINNING_LINES.each do |line|
    if brd.values_at(*line).count(PLAYER_MARKER) == 3
      return 'Player'
    elsif brd.values_at(*line).count(COMPUTER_MARKER) == 3
      return 'Computer'
    end
  end
  nil
end

def keep_score(score, winner)
  if winner == 'Player'
    score['Player'] += 1
  elsif winner == 'Computer'
    score['Computer'] += 1
  else
    prompt "No one scores!"
  end
end

def display_score(score)
  prompt "Your score #{score['Player']} - Computer score #{score['Computer']}"
end

def display_winner(brd, winner)
  if someone_won?(brd)
    prompt "#{winner} won!"
  else
    prompt "It's a tie!"
  end
end

def finished?(score)
  score['Player'] == WINNING_SCORE ||
    score['Computer'] == WINNING_SCORE
end

def champion(score)
  if score['Player'] > score['Computer']
    prompt "Congratulations! you are the champion!"
  elsif score['Computer'] > score['Player']
    prompt "The Computer is the champion!"
  end
end

def play_again?
  answer = ''
  loop do
    prompt "Play again? (y or n)"
    answer = gets.chomp.downcase
    break if %w(y yes n no).include?(answer)
    prompt "Invalid input. Select y/yes or n/no."
  end

  if ['y', 'yes'].include?(answer)
    true
  else
    false
  end
end

system 'clear'
welcome

# Main game loop starts
loop do
  score = { 'Player' => 0, 'Computer' => 0 }

  loop do
    system 'clear'
    board = initialize_board
    current_player = who_goes_first?

    loop do
      display_board(board)
      place_piece!(board, current_player)
      current_player = alternate_player(current_player)
      break if someone_won?(board) || board_full?(board)
    end

    winner = detect_winner(board)
    display_board(board)
    keep_score(score, winner)
    display_score(score)
    display_winner(board, winner)
    prompt "Press enter to continue."
    gets.chomp
    break if finished?(score)
  end
  champion(score)
  break unless play_again?
end

prompt("Thanks for Playing! Good Bye!")
