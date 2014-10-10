# Create a module that you can mix in to ONE of your subclasses that 
# describes a behavior unique to that subclass.

module Deliverable
  def can_deliver?(kg)
    kg < 800 ? true : false 
  end
end

class Vehicle
  attr_accessor :year, :model, :color, :current_speed

  def initialize(year, model, color)
    self.year = year
    self.model = model
    self.color = color
    self.current_speed = 0
  end

  def speed_up(number)
    self.current_speed += number
    puts "You increased your speed by #{number} mph"
  end

  def brake(number)
    self.current_speed -= number
    puts "You decreased your speed by #{number} mph"
  end

  def display_current_speed
    "Your current speed is #{self.current_speed} mph"
  end

  def turn_off
    self.current_speed = 0
    puts "You turned off the engine"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  include Deliverable

  NUMBER_OF_DOORS = 2
end


focus = MyCar.new(2006, "Focus", "silver")
transit = MyTruck.new(2009, "Transit", "white")

puts transit.can_deliver(400)
puts transit.can_deliver(900)


