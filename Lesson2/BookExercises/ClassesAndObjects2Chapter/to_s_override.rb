# Override the to_s method to create a user friendly print out of your object.

class Person
  attr_accessor :name, :age

  def initialize(n, a)
    self.name = n
    self.age = a
  end

  def to_s
    "#{self.name} is #{self.age} years old"
  end
end

ingin = Person.new("Ingin", 24)
puts ingin