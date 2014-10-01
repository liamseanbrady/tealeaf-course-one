# create a procedural calculator program that accepts two numbers from the user
# and an operator sign or the word of the operation, and then performs that
# operation and returns the answer to the user

require "pry"

# change after solution
def prompt_user(msg)
  puts "=> #{msg}"
end

# get two numbers from the user
prompt_user("Please give me the first number:")
first_num = gets.chomp

# get the operator from the user
prompt_user("Please give me the second number:")
second_num = gets.chomp

# determine what the operator is and store it in the 'operator' variable
prompt_user("Please enter the operation you would like to perform")
operator = gets.chomp

binding.pry

result =
if operator == "+" || operator =~ /add/i
  first_num.to_i + second_num.to_i
elsif operator == "-" || operator =~ /subtract/i
  first_num.to_i - second_num.to_i
elsif operator == "*" || operator =~ /multiply/i
  first_num.to_i * second_num.to_i
elsif operator == "/" || operator =~ /divide/i
  first_num.to_f / second_num.to_f
else
  puts "sorry, you entered an invalid number!"
end

# print the value of the operation back to the user

puts result