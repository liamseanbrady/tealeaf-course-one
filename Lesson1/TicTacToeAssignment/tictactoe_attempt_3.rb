# draw a board

# loop until a winner or all squares are taken
#   player 1 picks an empty square
#   check for winner
#   player 2 picks an empty square
#   check for winner

# If there’s a winner
#   show the winner
# else
#   it’s a tie

require "pry"

def draw_board
  puts "  |  |  "
  puts "--+--+--"
  puts "  |  |  "
  puts "--+--+--"
  puts "  |  |  "
end

draw_board

def player_picks_square
  puts "Pick a square (1 - 9)"
  position = gets.chomp
  binding.pry
end

begin
  player_picks_square
end until winner || all_squares_taken?