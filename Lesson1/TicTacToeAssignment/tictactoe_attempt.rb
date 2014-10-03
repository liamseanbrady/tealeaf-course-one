# Problem scope: create a tic tac toe game from scratch with the following format

#      |     |     
#   x  |  x  |  x  
#      |     |     
# -----+-----+-----
#      |     |     
#   x  |  x  |  x  
#      |     |     
# -----+-----+-----
#      |     |     
#   x  |  x  |  x  
#      |     |     

require "pry"

def make_board(board_model)
  puts "     |     |     
  #{board_model[0]}  |  #{board_model[1]}  |  #{board_model[2]}  
     |     |     
-----+-----+-----
     |     |     
  #{board_model[3]}  |  #{board_model[4]}  |  #{board_model[5]}  
     |     |     
-----+-----+-----
     |     |     
  #{board_model[6]}  |  #{board_model[7]}  |  #{board_model[8]}  
     |     |     "

end

def player_1_move(board_model)
  # Ask player 1 to pick a square between 1 and 9
  puts "Choose a position (from 1 to 9) to place a piece"
  # Store player 1's input
  p1_move = gets.chomp
  # If square is empty, then fill it
  if input_valid?(board_model, p1_move)
    board_model[p1_move.to_i - 1] = "X"
  # Else tell player 1 that square is taken, and ask them again to pick another square between 1 and 9
  else
    puts "Whoops! That spot's taken. Please try again..."
    player_1_move(board_model)
  end
end

def input_valid?(board_model, p1_move)
  board_model[p1_move.to_i - 1] != "X" && board_model[p1_move.to_i - 1] != "O" && p1_move.to_i < 10
end

# Separate logic for finding a winner

def declare_winner(board_model, pos)
  board_model[pos] == "X" ? "Player 1 won" : "Player 2 won"
end

def find_winner(board_model)
  winner =
  # For indices 0..2 in the array, we have a winner if the following is true:
  for pos in 0..2
    # current, current + 3, current + 6 are all the same value
    if board_model[pos] == board_model[pos+3] && board_model[pos] == board_model[pos+6] && board_model[pos] != " "
      puts declare_winner(board_model, pos)
      return true
    end
  end
  # For index 0 in the array, we have a winner if the following is true:
    # current, current + 4, current + 8 are all the same value
    if board_model[0] == board_model[4] && board_model[0] == board_model[8] && board_model[pos] != " "
      puts declare_winner(board_model, 0)
      return true
    end
  # For index 2 in the array, we have a winner if the following is true:
    # current, current + 2, current + 4 are all the same value
    if board_model[2] == board_model[4] && board_model[2] == board_model[6] && board_model[pos] != " "
      puts declare_winner(board_model, 2)
      return true
    end
  # For indices 0, 3, and 6 in the array, we have a winner if the following is true:
  # for pos in [1, 3, 6]
  # #   # current, current + 1, current + 2 are all the same value
  #   if board_model[pos] == board_model[pos+1] && board_model[pos] == board_model[pos+2]
  #     declare_winner(board_model, pos)
  #     return true
  #   end
  # end
end

board_model = [ " ", " ", " ", 
                " ", " ", " ",
                " ", " ", " " ]


make_board(board_model)

# Display the empty board

# extract empty_squares? method to here
def get_empty_squares(board_model)
  empty_squares = []
  board_model.each_with_index do |symbol, position|
    if symbol == " "
      empty_squares.push([symbol, position])
    end
  end
  return empty_squares
end

# Set up bool for if we have a winner
def is_won?(board_model)
  if find_winner(board_model)
    return true
  elsif get_empty_squares(board_model) == []
    puts "Nobody won...shame on you all!!!"
    return true
  else
    return false
  end
end

# While there are still empty spaces and there is no winner
while !is_won?(board_model)
  player_1_move(board_model)
  # Filter out the squares that are not empty
  empty_squares = get_empty_squares(board_model)
  # if there are greater than 2 empty squares
  # Check if there's a winner
  if !is_won?(board_model) && empty_squares.size >= 2
    # Pick a random square for the empty squares and put an O in it for player 2
      # Pick a random square from those available
    rand_square = empty_squares[rand(empty_squares.size - 1)]
      # Put a O in the chosen square
    board_model[rand_square[1]] = "O"
    make_board(board_model)
  elsif !is_won?(board_model)
    make_board(board_model)
  end
end
# End the game and declare who won







