# Create a method that takes an array as a parameter. Within that method, try 
# calling methods that do not mutate the caller. How does that affect the array 
# outside of the method? What about when you call a method that mutates the caller within the method?

require "pry"

array = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 10, 10]

def passing(var, &block)
  block.call
end

passing(array) do
  array.push(11) 
end

passing(array) do
  array.pop
end

# Confused by results, so creating a simpler example
passing(array) do
  p array.uniq
end

# The problem was that I thought push and pop didn't mutate the caller. Apparently, they do.

