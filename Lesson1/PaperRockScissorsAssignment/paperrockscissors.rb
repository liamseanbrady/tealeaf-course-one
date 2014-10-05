# 1. Come up with requirements/specifications, which will determine the scope.
    # A game of paper rock scissors that allows player to pick p, r, or s
    # and a p, r, or s is picked by computer and player win, player lose, or draw
# 2. Application logic; sequence of steps
    # ask user for p, r, or s
    # store user's input
    # computer picks p, r or s
    # determine if player has won, lost or drawn
    # say who the winner is
# 3. Translation of those steps into code
# 4. Run code to verify logic


player_ended_game = false

def end_game(player_ended_game)
  player_ended_game
end

def get_choice(the_choice, player)
  choice = case the_choice
  when "p"
    "#{player} picked Paper"
  when "r"
    "#{player} picked Rock"
  when "s"
    "#{player} picked Scissors"
  end
  return choice
end

def player_win?(choice_one, choice_two)
  if choice_one == "p" && choice_two == "r"
    puts "Paper wraps Rock!"
    return true
  elsif choice_one == "r" && choice_two == "s"
    puts "Rock crushes Scissors!"
    return true
  elsif choice_one == "s" && choice_two == "p"
    puts "Scissors cuts Paper!"
    return true
  else
    return nil
  end
end

def should_end_game?
  puts "Play again? (Y/N)"
  player_end_game = gets.chomp
  if player_end_game.upcase == "N"
    return true
  end
end

puts "Welcome to Paper Rock Scissors"

begin
  puts "Choose one: ( P / R / S )"
  player_choice = gets.chomp
  comp_choice = ["p", "r", "s"].sample
  puts "#{get_choice(player_choice.downcase, "You")} and #{get_choice(comp_choice.downcase, "Computer")}"
  if player_choice == comp_choice
    puts "It's a tie"
  elsif player_win?(player_choice, comp_choice)
    puts "You won!"  # Not working
  elsif player_win?(comp_choice, player_choice)
    puts "You lost!" # Not working
  end
end until should_end_game?


# welcome player to the game
# until player ends the game
  # ask player for p, r, or s
  # store player's input
  # computer picks p, r or s
  # show the user's input, and the computer's input
  # determine if player has won, lost or drawn
  # tell player how they won: "Paper wraps rock", "Rock crushes scissors"
  # say who the winner is
  # ask player if the want to play again
# end




