# Get two numbers from the user
def ask(ques)
  "****** #{ques} ******"
end

puts ask("Please enter the first number:")
num1 = gets.chomp

puts ask("Please enter the second number:")
num2 = gets.chomp

# Get what operation the user would like to perform
puts ask("Please enter...\n1 for addition\n2 for subtraction\n3 for multiplication\n4 for division")
operation = gets.chomp

# Perform the operation chosen by the user
result = 
if operation == "1"
  num1.to_i + num2.to_i
elsif operation == "2"
  mum1.to_i - num2.to_i
elsif operation == "3"
  num1.to_i * num2.to_i
elsif operation == "4"
  num1.to_f / num2.to_f
else
  "Whoops! You've entered an invalid operation..."
end

# Print out the value of the operation to the screen
puts result  
