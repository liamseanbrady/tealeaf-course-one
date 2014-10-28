# class MyCrazyError < StandardError
#   p 'this is my custom error'
# end

# begin
#   raise MyCrazyError
# end

# begin
#   raise ZeroDivisionError, 'Hello, I am a random zero division error'
# rescue => e
#   p e.message
#   p e.backtrace
# end

# begin
#   raise ZeroDivisionError, 'Hello, I am a random zero division error'
# rescue ZeroDivisionError => e
#   p e.message
#   p e.backtrace
# end

# def some_method
#   p 'Hello method'
#   raise
#   p 'Bye method'
# rescue
#   p 'Rescuing exceptions'
# end

# some_method

# file = nil

# begin
#   file = File.open(ARGV[0])
#   raise
# rescue
#   p 'I rescue all exceptions and raise new ones'
# ensure
#   file.close
#   p 'just closed the file'
# end

# i = 0

# begin
#   begin
#     if i == 0
#       1/0
#     end
#     raise 'random runtime exception'
#     p 'I should never get executed'
#   rescue ZeroDivisionError
#     p 'I am rescuing only ZeroDivisionErrors!'
#     i += 1      
#   end  
# end while i <= 10

# begin
#   1/0
#   p 'I should never get executed'
# rescue
#   p 'I am rescuing an exception and can do what I want!'
# end

# def i_must_have_truth(value)
#   raise 'Hello!'
# end

# i_must_have_truth true

# def i_must_have_truth(value)
#   raise TypeError, 'You must give me truth' if !value
# end

# i_must_have_truth false

# 1/0

# blah = Object.new
# blah.hello