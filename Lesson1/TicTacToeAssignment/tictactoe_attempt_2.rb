# Problem scope:
#   Create a tic tac toe game
#   Player1 vs Player2
#   Player1 moves, then Player2 moves, UNTIL all squares are filled
#   Player1 is X, Player2 is O
#   Once all squares are filled or there is a winning combo for X or Y, the game ends

# Ruby implementation:

# VARS

board_model = { "1" => " ", "2" => " ", "3" => " ",
                "4" => " ", "5" => " ", "6" => " ",
                "7" => " ", "8" => " ", "9" => " " }

game_over = false

# METHODS

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

def prompt(msg)
  puts "=> #{msg}"
end

def declare(msg)
  puts "******** #{msg} ********"
end

def p1_move(board_model)
  prompt("Please pick a square (1 to 9)")
  square_num = gets.chomp
  if square_empty?(board_model, square_num)
    board_model[square_num] = "X"
  else
    prompt("Whoops, that square is already taken!")
    p1_move(board_model)
  end
end

def square_empty?(board_model, square_num)
  board_model[square_num] == " "
end

def winner_exists?(board_arr)
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

def traverse_board(board_arr, pos, pos2, pos3)
  if board_arr[pos] != " " && board_arr[pos] == board_arr[pos2] && board_arr[pos] == board_arr[pos3]
    return find_winner(board_arr, pos)
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

def end_game_with_msg(game_over, msg)
  game_over = true
  declare msg
end

def free_squares(board_model)
  board_model.select{ |square_num, sym| sym == " " }
end

def p2_move(free_squares, board_model)
  options = []
  free_squares.each{ |square_num, sym| options.push(square_num) }
  rand_square = options[rand(options.size - 1)]
  board_model[rand_square] = "O"
end

# MAIN

until game_over
  p1_move(board_model)
  show_board_ui(board_model)
  if winner_exists?(board_model.values)
    end_game_with_msg(game_over, winner_exists?(board_model.values))
    break
  elsif free_squares(board_model).empty?
    end_game_with_msg(game_over, "The game is a tie")
    break
  else
    p2_move(free_squares(board_model), board_model)
  end
  show_board_ui(board_model)
end

