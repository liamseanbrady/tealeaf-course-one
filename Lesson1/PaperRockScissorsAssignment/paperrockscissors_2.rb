# Pseudo-code:

# Welcome to the game
# Loop until player says to stop
  # Ask player for p r or s and store result
  # Get p r or s from computer
  # Print what player picked and what computer picked
  # Print the result - 'paper beats rock', etc
  # Print player won or player lost
  # Ask player if they want to play again
  # Process player's repsonse and end game if no, or keep loop going if yes


game_stopped = false

weapon_names = {p: "Paper", r: "Rock", s: "Scissors"}

def player_won?(weapon_names, player_weapon, comp_weapon)
  if weapon_names[player_weapon.to_sym] == "Paper" && weapon_names[comp_weapon.to_sym] == "Rock"
    return true
  elsif weapon_names[player_weapon.to_sym] == "Rock" && weapon_names[comp_weapon.to_sym] == "Scissors"
    return true
  elsif weapon_names[player_weapon.to_sym] == "Scissors" && weapon_names[comp_weapon.to_sym] == "Paper"
    return true
  else
    return false
  end
end

def display_winning_weapon(weapon_names, player_weapon, comp_weapon)
  if player_weapon == comp_weapon
    puts "You both picked the same!"
  elsif weapon_names[player_weapon.to_sym] == "Paper" && weapon_names[comp_weapon.to_sym] == "Rock"
    puts "Paper wraps Rock!"
  elsif weapon_names[player_weapon.to_sym] == "Rock" && weapon_names[comp_weapon.to_sym] == "Scissors"
    puts "Rock crushes Scissors!"
  elsif weapon_names[player_weapon.to_sym] == "Scissors" && weapon_names[comp_weapon.to_sym] == "Paper"
    puts "Scissors cuts Paper!"
  elsif weapon_names[comp_weapon.to_sym] == "Paper" && weapon_names[player_weapon.to_sym] == "Rock"
    puts "Paper wraps Rock!"
  elsif weapon_names[comp_weapon.to_sym] == "Rock" && weapon_names[player_weapon.to_sym] == "Scissors"
    puts "Rock crushes Scissors!"
  elsif weapon_names[comp_weapon.to_sym] == "Scissors" && weapon_names[player_weapon.to_sym] == "Paper"
    puts "Scissors cuts Paper!"
  end
end

def display_welcome_msg
  puts "Welcome to Paper, Rock, Scissors"
end

def display_player_prompt
  puts "Please pick your weapon (P/R/S):"
end

def display_invalid_input_msg
  puts "Whoops, input invalid - try again."
end

def display_player_and_comp_weapons(weapon_names, player_weapon, comp_weapon)
  puts "Player picked #{weapon_names[player_weapon.to_sym]} and Computer picked #{weapon_names[comp_weapon.to_sym]}"
end

def display_result(weapon_names, player_weapon, comp_weapon)
  if player_weapon == comp_weapon
    puts "The game is a tie"
  elsif player_won?(weapon_names, player_weapon, comp_weapon)
    puts "Player won"
  else
    puts "Player lost"
  end
end

def get_player_input(weapon_names)
  display_player_prompt
  player_input = gets.chomp
  if weapon_names.keys.include?(player_input.to_sym)
    return player_input
  else
    display_invalid_input_msg
    get_player_input(weapon_names)
  end
end



display_welcome_msg

begin
  player_weapon = get_player_input(weapon_names)
  comp_weapon = weapon_names.keys.sample.to_s
  display_player_and_comp_weapons(weapon_names, player_weapon, comp_weapon)
  display_winning_weapon(weapon_names, player_weapon, comp_weapon)
  display_result(weapon_names, player_weapon, comp_weapon)
  puts "Play again? (Y/N)"
  player_decision = gets.chomp
  if player_decision == "N"
    game_stopped = true
  end
end until game_stopped


