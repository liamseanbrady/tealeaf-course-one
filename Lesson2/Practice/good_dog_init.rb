class GoodDog
  attr_accessor :name, :height, :weight

  def initialize(n, h, w)
    @name = n
    @height = h
    @weight = w
  end

  def speak
    "#{self.name} says arf!"
  end

  def change_info(n, h, w)
    self.name = n
    self.height = h
    self.weight = w
  end

  def info
    "#{self.name} is #{self.height} tall and weighs #{self.weight}"
  end 
end

waldo = GoodDog.new("Waldo", "2ft", "40lbs")
puts waldo.speak

puts waldo.info

waldo.change_info("Older Waldo", "4ft", "80lbs")

puts waldo.info