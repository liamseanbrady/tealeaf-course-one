# Add a class method to your MyCar class that calculates the gas 
# mileage of any car.

class MyCar
  attr_accessor :year, :model, :color, :current_speed

  def self.gas_mileage(gallons, miles)
    puts "#{miles / gallons} miles per gallon of gas"
  end

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
    puts "You decreased you speed by #{number}"
  end

  def turn_off
    self.current_speed = 0
    puts "You turned off the car"
  end

end

focus = MyCar.new(2006, "Focus", "silver")
focus.speed_up(60)
focus.brake(10)
puts focus.current_speed

MyCar.gas_mileage(10, 400)
