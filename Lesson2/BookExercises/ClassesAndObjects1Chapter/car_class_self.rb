# You want to create a nice interface that allows you to accurately describe the action you want your program
# to perform. Create a method called spray_paint that can be called on an object and will modify the color of the car.

class MyCar
  attr_accessor :color, :current_speed
  attr_reader :year

  def initialize(year, model, color)
    @year = year
    @model = model
    @color = color
    @current_speed = 0
  end

  def speed_up(number)
    self.current_speed += number
    puts "You push the gas and accelerate by #{number} mph"
  end 

  def brake(number)
    self.current_speed -= number
    puts "You push the brake and decelerate by #{number} mph"
  end

  def turn_off
    self.current_speed = 0
    puts "You turned off the car..."
  end 

  def spray_paint(color)
    self.color = color
    puts "You are spray-painting your car #{color}"
  end
end

focus = MyCar.new(2006, "Focus", "silver")
focus.speed_up(20)
focus.brake(10)
puts focus.current_speed
focus.turn_off
puts focus.current_speed
puts focus.year
puts focus.color
focus.spray_paint("green")
puts focus.color