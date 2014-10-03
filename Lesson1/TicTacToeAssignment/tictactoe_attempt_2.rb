# Problem scope:
#   Create a tic tac toe game
#   Player1 vs Player2
#   Player1 moves, then Player2 moves, UNTIL all squares are filled
#   Player1 is X, Player2 is O
#   Once all squares are filled or there is a winning combo for X or Y, the game ends

# Pseudo-code:

require "pry"

# Create the board_model var
board_model = { "1" => " ", "2" => " ", "3" => " ",
                "4" => " ", "5" => " ", "6" => " ",
                "7" => " ", "8" => " ", "9" => " " }

# Create the board_ui var

# Create the is_game_over var
is_game_over = false

# Create player1_move to take care of all of the logic for allowing player1 to make a move
def get_move(board_model)
# Ask Player1 to pick a square between 1 and 9
  puts "Please pick a number (1 to 9):"
  # Store Player1's input
  player_move = gets.chomp
end

# Find out if a chosen square is empty
def is_valid_square?(board_model, square_num)
  board_model[square_num] == " " ? true : false
end

# Logic for checking if there is a winner:
def is_winner?(board_arr)
    # For indices 0..2 in the array, we have a winner if the following is true:
    for pos in 0..2
      # if current, current + 3, current + 6 are all the same value
      if board_arr[pos] != " " && board_arr[pos] == board_arr[pos + 3] && board_arr[pos] == board_arr[pos + 6]
        # if current is X
        if board_arr[pos] == "X"
          # return Player 1
          return "Player 1 won"
        # elsif current is O
        elsif board_arr[pos] == "O"
          # return Player2
          return "Player 2 won"
        # else return nil
        else
          return nil
        end
      end
    end
    # For index 0 in the array, we have a winner if the following is true:
      # if current, current + 4, current + 8 are all the same value
      if board_arr[pos] != " " && board_arr[0] == board_arr[4] && board_arr[0] == board_arr[8]
        # if current is X
        if board_arr[0] == "X"
          # return Player 1
          return "Player 1 won"
        # elsif current is O
        elsif board_arr[0] == "O"
          # return Player2
          return "Player 2 won"
        # else return nil
        else
          return nil
        end
      end
    # For index 2 in the array, we have a winner if the following is true:
      # if current, current + 2, current + 4 are all the same value
      if board_arr[pos] != " " && board_arr[2] == board_arr[4] && board_arr[2] == board_arr[6]
        # if current is X
        if board_arr[pos] == "X"
          # return Player 1
          return "Player 1 won"
        # elsif current is O
        elsif board_arr[pos] == "O"
          # return Player2
          return "Player 2 won"
        # else return nil
        else
          return nil
        end
      end
    # For indices 0, 3, and 6 in the array, we have a winner if the following is true:
      # if current, current + 1, current + 2 are all the same value
        # if current is X
          # return Player 1
        # elsif current is O
          # return Player2
        # else return nil
end




# Until is_game_over
until is_game_over
  move_valid = false
  while !move_valid
    # Call player1_move method which asks player1 for input, stores it, then makes the move if valid
    player_move = get_move(board_model)
    # if square is empty (valid), then fill it with X
    if is_valid_square?(board_model, player_move)
      board_model[player_move] = "X"
      move_valid = true
    end
  end
  # store the number of empty squares in a var called empty_count
  empty_squares = board_model.select{ |square_num, symbol| symbol == " " }
  empty_count = empty_squares.size
  board_model_arr = board_model.values
  # if there is a winner
  if is_winner?(board_model_arr)
    puts is_winner?(board_model_arr)
    is_game_over = true
    break
  # else if empty_count is equal to 0
  elsif empty_count == 0
    puts "Nobody won the game"
    is_game_over = true
    break
  else
    #   pick a random empty square and fill it with an O
    p2_choices = []
    empty_squares.each do |square_num, symbol|
      p2_choices.push([square_num, symbol])
    end
    rand_empty_square = p2_choices[rand(p2_choices.size - 1)]
    board_model[rand_empty_square[0]] = "O"
    p board_model
  end
end










