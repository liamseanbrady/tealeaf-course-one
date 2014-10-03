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

game_over = false

def show_board_ui(board_model)
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

def valid_square?(board_model, square_num)
  board_model[square_num] == " " ? true : false
end

def prompt(msg)
  puts "=> #{msg}"
end

def declare(msg)
  puts "******** #{msg} ********"
end

def p1_move(board_model)
  prompt("Please pick a square (1 to 9)")
  player1_move = gets.chomp
  if valid_square?(board_model, player1_move)
    board_model[player1_move] = "X"
  else
    prompt("Whoops, that square is already taken!")
    p1_move(board_model)
  end
end

def find_winner(board_arr, pos)
  if board_arr[pos] == "X"
    return "Player 1 won"
  elsif board_arr[pos] == "O"
    return "Player 2 won"
  else
    return nil
  end
end

def traverse_board(board_arr, pos, pos2, pos3)
  if board_arr[pos] != " " && board_arr[pos] == board_arr[pos2] && board_arr[pos] == board_arr[pos3]
    return find_winner(board_arr, pos)
  end
end

def winner?(board_arr)
    [0, 1, 2].each do |pos|
      if down = traverse_board(board_arr, pos, pos+3, pos+6)
        return down
      else
        next
      end
    end

    [0, 3, 6].each do |pos|
      if across = traverse_board(board_arr, pos, pos+1, pos+2)
        return across
      end
    end

    if diag_right = traverse_board(board_arr, 0, 4, 8)
      return diag_right
    elsif diag_left = traverse_board(board_arr, 2, 4, 6)
      return diag_left
    end

    return nil
end

def p2_move(free_squares, board_model)
  options = []
  free_squares.each{ |square, sym| options.push([square, sym]) }
  rand_square = options[rand(options.size - 1)]
  board_model[rand_square[0]] = "O"
end

def free_squares(board_model)
  board_model.select{ |square_num, symbol| symbol == " " }
end

until game_over
  p1_move(board_model)
  show_board_ui(board_model)
  if winner?(board_model.values) || free_squares(board_model).empty?
    if winner?(board_model.values)
      declare(winner?(board_model.values))
    else 
      declare("The game is a tie")
    end
    game_over = true
    break
  else
    p2_move(free_squares(board_model), board_model)
  end
  show_board_ui(board_model)
end

# Goals: 
  # refactor to get rid of move_valid flag 
  # extract into smaller methods, until I can do it no more



# Pseudo-code:


# Create the board_model var

# Create the board_ui

# Create the game_over var

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


# Until game_over
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








