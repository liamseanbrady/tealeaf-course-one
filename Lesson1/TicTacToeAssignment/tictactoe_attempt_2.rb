# Problem scope:
#   Create a tic tac toe game
#   Player1 vs Player2
#   Player1 moves, then Player2 moves, UNTIL all squares are filled
#   Player1 is X, Player2 is O
#   Once all squares are filled or there is a winning combo for X or Y, the game ends

# Ruby implementation:

require "pry"

board_model = { "1" => " ", "2" => " ", "3" => " ",
                "4" => " ", "5" => " ", "6" => " ",
                "7" => " ", "8" => " ", "9" => " " }

def make_board_ui(board_model)
  puts "     |     |     
  #{board_model["1"]}  |  #{board_model["2"]}  |  #{board_model["3"]}  
     |     |     
-----+-----+-----
     |     |     
  #{board_model["4"]}  |  #{board_model["5"]}  |  #{board_model["6"]}  
     |     |     
-----+-----+-----
     |     |     
  #{board_model["7"]}  |  #{board_model["8"]}  |  #{board_model["9"]}  
     |     |     "
end

is_game_over = false

def get_move(board_model)
  puts "Please pick a number (1 to 9):"
  player_move = gets.chomp
end

def is_valid_square?(board_model, square_num)
  board_model[square_num] == " " ? true : false
end

def is_winner?(board_arr)
    for pos in 0..2
      if board_arr[pos] != " " && board_arr[pos] == board_arr[pos + 3] && board_arr[pos] == board_arr[pos + 6]
        if board_arr[pos] == "X"
          return "Player 1 won"
        elsif board_arr[pos] == "O"
          return "Player 2 won"
        else
          return nil
        end
      end
    end

      if board_arr[0] != " " && board_arr[0] == board_arr[4] && board_arr[0] == board_arr[8]
        if board_arr[0] == "X"
          return "Player 1 won"
        elsif board_arr[0] == "O"
          return "Player 2 won"
        else
          return nil
        end
      end

      if board_arr[2] != " " && board_arr[2] == board_arr[4] && board_arr[2] == board_arr[6]
        if board_arr[pos] == "X"
          return "Player 1 won"
        elsif board_arr[pos] == "O"
          return "Player 2 won"
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

until is_game_over
  move_valid = false
  while !move_valid
    player_move = get_move(board_model)
    if is_valid_square?(board_model, player_move)
      board_model[player_move] = "X"
      move_valid = true
    end
  end
  empty_squares = board_model.select{ |square_num, symbol| symbol == " " }
  empty_count = empty_squares.size
  board_model_arr = board_model.values
  if is_winner?(board_model_arr)
    puts is_winner?(board_model_arr)
    is_game_over = true
    break
  elsif empty_count == 0
    puts "Nobody won the game"
    is_game_over = true
    break
  else
    p2_choices = []
    empty_squares.each do |square_num, symbol|
      p2_choices.push([square_num, symbol])
    end
    rand_empty_square = p2_choices[rand(p2_choices.size - 1)]
    board_model[rand_empty_square[0]] = "O"
    make_board_ui(board_model)
  end
end


# Goals: 
  # refactor to get rid of move_valid flag 
  # extract into smaller methods, until I can do it no more



# Pseudo-code:


# Create the board_model var

# Create the board_ui

# Create the is_game_over var

# Create player1_move to take care of all of the logic for allowing player1 to make a move
# Ask Player1 to pick a square between 1 and 9
  # Store Player1's input

# Find out if a chosen square is empty

# Logic for checking if there is a winner:
    # For indices 0..2 in the array, we have a winner if the following is true:
      # if current, current + 3, current + 6 are all the same value
        # if current is X
          # return Player 1
        # elsif current is O
          # return Player2
        # else return nil

    # For index 0 in the array, we have a winner if the following is true:
      # if current, current + 4, current + 8 are all the same value
        # if current is X
          # return Player 1
        # elsif current is O
          # return Player2
        # else return nil

    # For index 2 in the array, we have a winner if the following is true:
      # if current, current + 2, current + 4 are all the same value
        # if current is X
          # return Player 1
        # elsif current is O
          # return Player2
        # else return nil

    # For indices 0, 3, and 6 in the array, we have a winner if the following is true:
      # if current, current + 1, current + 2 are all the same value
        # if current is X
          # return Player 1
        # elsif current is O
          # return Player2
        # else return nil


# Until is_game_over
    # Call player1_move method which asks player1 for input, stores it, then makes the move if valid
    # if square is empty (valid), then fill it with X

  # store the number of empty squares in a var called empty_count
  # if there is a winner
    # print the result of the the winner is
    # end the game
  # else if empty_count is equal to 0
    # print that nobody won the game
    # end the game
  # else
    # pick a random empty square and fill it with an O
# end of game








