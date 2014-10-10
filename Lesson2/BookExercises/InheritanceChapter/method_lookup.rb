# Print to the screen your method lookup for the classes that 
# you have created.

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
    puts "Your current speed is #{self.current_speed} mph" 
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

puts ""
puts "--- Method lookup for Vehicle ---"
puts Vehicle.ancestors
puts ""
puts "--- Method lookup for MyCar ---"
puts MyCar.ancestors
puts""
puts "--- Method lookup for MyTruck ---"
puts MyTruck.ancestors





