# Create a class called MyCar. When you initialize a new instance or object of the class, 
# allow the user to define some instance variables that tell us the year, color, and model of the car. 
# Create an instance variable that is set to 0 during instantiation of the object to track the current speed of the car as well. 
# Create instance methods that allow the car to speed up, brake, and shut the car off.

class MyCar
  def initialize(year, color, model)
    @year = year
    @color = color
    @model = model
    @current_speed = 0
  end

  def speed_up(number)
    @current_speed += number
    puts "Your current acceleration is #{number} mph"
  end

  def brake(number)
    @current_speed -= number
    puts "Your current deceleration is #{number} mph"
  end

  def current_speed
    puts "Your current speed is #{@current_speed} mph"
  end

  def turn_off
    @current_speed = 0
    puts "You have turned the car off"
  end
end

ford_focus = MyCar.new(2006, "Silver", "Focus")
ford_focus.speed_up(10)
ford_focus.speed_up(15)
ford_focus.brake(6)
ford_focus.current_speed
ford_focus.turn_off
ford_focus.current_speed