# Add an accessor method to your MyCar class to change and view the color of your car. 
# Then add an accessor method that allows you to view, but not modify, the year of your car.

class MyCar
  attr_accessor :color
  attr_reader :year

  def initialize(year, model, color)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "You push the gas and accelerate to #{number} mph"
  end

  def brake(number)
    @current_speed -= number
    puts "You push the brake and decelerate by #{number} mph"
  end

  def current_speed
    puts "Your current speed is #{@current_speed} mph"
  end

  def turn_off
    @current_speed = 0
    puts "You turned off the car..."
  end
end

focus = MyCar.new(2006, "Focus", "Silver")
focus.speed_up(20)
focus.brake(10)
focus.current_speed
focus.turn_off
focus.current_speed
puts focus.color
focus.color = "Red"
puts focus.color
puts focus.year
