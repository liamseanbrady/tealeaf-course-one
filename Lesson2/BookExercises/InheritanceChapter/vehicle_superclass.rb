# Create a superclass called Vehicle for your MyCar class to inherit from 
# and move the behavior that isn't specific to the MyCar class to the 
# superclass. Create a constant in your MyCar class that stores information 
# about the vehicle that makes it different from other types of Vehicles.

# Then create a new class called MyTruck that inherits from your superclass 
# that also has a constant defined that separates it from the MyCar class 
# in some way.


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
    puts "You increased your speed by #{number}"
  end

  def brake(number)
    self.current_speed -= number
    puts "You decreased your speed by #{number}"
  end

  def current_speed
    puts "Your current speed is #{@current_speed}"
    @current_speed
  end

  def turn_off
    puts "You turned off the vehicle"
    self.current_speed = 0
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4
end

class MyTruck < Vehicle
  MINIMUM_HEIGHT = "8ft"
end

focus = MyCar.new(2006, "Focus", "silver")
focus.speed_up(30)
focus.current_speed
focus.brake(10)
focus.current_speed
focus.turn_off
focus.current_speed
