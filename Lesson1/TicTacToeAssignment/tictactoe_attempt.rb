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




# Display the empty board

# While there are still empty spaces and there is no winner
  # Ask player 1 to pick a square between 1 and 9
  # Store player 1's input
    # If square is empty, then fill it
    # Elsif tell player 1 that square is taken, and ask them again to pick another square between 1 and 9
    # if there are greater than 2 empty squares
      # Pick a random square for the empty squares and put an O in it for player 2
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




