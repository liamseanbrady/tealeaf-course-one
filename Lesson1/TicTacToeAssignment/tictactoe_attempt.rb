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

board_model = [ " ", " ", " ", 
                " ", " ", " ",
                " ", " ", " " ]

p board_model

# Display the empty board

# While there are still empty spaces and there is no winner
while board_model.select { |square| square == " " }
  player_1_move(board_model)
  # if there are greater than 2 empty squares
    # Check if there's a winner
  # Pick a random square for the empty squares and put an O in it for player 2
  # Filter out the squares that are not empty
  empty_squares = []
  board_model.each_with_index do |symbol, position|
    if symbol == " "
      empty_squares.push([symbol, position])
    end
  end
  # Pick a random square from those available
  rand_square = empty_squares[rand(empty_squares.size - 1)]
  # Put a O in the chosen square
  board_model[rand_square[1]] = "O"
  p board_model
end
# End the game and declare who won


# Separate logic for finding a winner

# For indices 1..3 in the array, we have a winner if the following is true:
  # current, current + 3, current + 6 are all the same value
# For index 1 in the array, we have a winner if the following is true:
  # current, current + 4, current + 8 are all the same value
# For index 3 in the array, we have a winner if the following is true:
  # current, current + 2, current + 4 are all the same value
# For indices 1, 4, and 7 in the array, we have a winner if the following is true:
  # current, current + 1, current + 2 are all the same value

