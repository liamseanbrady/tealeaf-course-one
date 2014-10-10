module Towable
  def can_tow(pounds)
    pounds < 2000 ? true : false
  end
end

class Vehicle
  attr_accessor :color, :current_speed
  attr_reader :model, :year
  @@number_of_vehicles

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
    @@number_of_vehicles += 1
  end

  def speed_up(number)
    self.current_speed += number
    puts "You increased your speed by #{number} mph"
  end

  def brake(number)
    self.current_speed -= number
    puts "You decreased your speed by #{number} mph"
  end

  def turn_off
    self.current_speed = 0
    puts "You turned off the engine..."
  end

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

  def spray_paint(color)
    self.color = color
    puts "Your new #{color} paint job looks great!"
  end
end

class MyTruck < Vehicle
  include Towable

  NUMBER_OF_DOORS = 2

  def to_s 
    puts "My truck is #{self.color}, {self.year}, and a #{self.model}"
  end
end

class MyCar < Vehicle
  NUMBER_OF_DOORS = 4

  def to_s 
    puts "My car is #{self.color}, {self.year}, and a #{self.model}"
  end
end







