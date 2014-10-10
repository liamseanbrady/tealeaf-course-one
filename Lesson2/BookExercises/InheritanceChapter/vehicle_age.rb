# Write a method called age that calls a private method to calculate the age
# of the vehicle. Make sure the private method is not available from outside 
# of the class. You'll need to use Ruby's built-in Time class to help.

module Towable
  def can_tow?(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :color, :current_speed
  attr_reader :year, :model
  @@number_of_vehicles = 0

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def speed_up(number)
    self.current_speed += number
    puts "You increased your speed by #{self.current_speed} mph"
  end

  def brake(number)
    self.current_speed -= number
    puts "You decreased your speed by #{self.current_speed} mph"
  end

  def display_current_speed
    puts "Your current speed is #{self.current_speed}"
  end

  def turn_off
    self.current_speed = 0
    puts "You turned off the engine"
  end

  def spray_paint(color)
    self.color = color
    puts "You changed the color of your vehicle to #{color}"
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallon} miles per gallon of gas"
  end

  def self.number_of_vehicles
    @@number_of_vehicles
  end

  def calculate_age
    "Your vehicle is #{age(self.year)} days old"
  end

  private

  def age(y)
    now = Time.now
    past = Time.new(y)
    sec_diff = now - past
    days = (((sec_diff/ 60) / 60) / 24).round(0)
  end

end 

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2

  def to_s
    "This truck is a #{self.model}, is #{self.color}, and was made in #{self.year}"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s
    "This car is a #{self.model}, is #{self.color}, and was made in #{self.year}"
  end
end

car = MyCar.new(2006, "Focus", "silver")
puts car.calculate_age









