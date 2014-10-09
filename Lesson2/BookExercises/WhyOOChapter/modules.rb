# What is a module? What is its purpose? 
# How do we use them with our classes? 
# Create a module for the class you created in exercise 1 
# and include it properly.

# A module is a means for implementing polymorphism in Ruby.
# However, you can't create an object from a module.
# You must mix a module into a class, and from there you
# can use the 'include' keyword to to mix it into the class.

# The purpose of a module to separate classes into groups
# of related classes using namespacing, or as a container
# for methods which don't fit in elsewhere in the code.

module Mammal
  def live_birth(type)
    puts "I am giving birth because I am a #{type} which is a mammal"
  end
end

class HumanBeing
  include Mammal
end

jayne = HumanBeing.new
jayne.live_birth("human")