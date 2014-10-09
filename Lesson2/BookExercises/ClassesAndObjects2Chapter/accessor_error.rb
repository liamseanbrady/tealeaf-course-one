# When running the following code...

class Person
  attr_reader :name
  def initialize(name)
    @name = name
  end
end

bob = Person.new("Steve")
bob.name = "Bob"

# We get the following error...

# test.rb:9:in `<main>': undefined method `name=' for
#   #<Person:0x007fef41838a28 @name="Steve"> (NoMethodError)

# We get this error because attr_reader is syntactic sugar for:

# def name
#   @name
# end

# If we wanted to be able to do bob.name = "Bob", we'd have to include
# attr_writer :name as well, or attr_accessor :name