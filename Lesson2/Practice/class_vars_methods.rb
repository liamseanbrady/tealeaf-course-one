class GoodDog
  
  @@number_of_dogs = 0

  DOG_YEARS = 7

  attr_accessor :name, :weight, :height, :age

  def initialize(n, w, h, a)
    self.name = n
    self.weight = w
    self.height = h
    self.age = a * DOG_YEARS
    @@number_of_dogs += 1
  end

  def speak
    puts "Hello, my name is #{name}"
  end

  def self.what_am_i
    "I'm a GoodDog class!"
  end

  def self.total_number_of_dogs
    @@number_of_dogs
  end

  def to_s
    "This dog's name is #{self.name} and it is #{self.age} in dog years."
  end

end

waldo = GoodDog.new("Waldo", "50lbs", "2.1ft", 4)
beau = GoodDog.new("Beau", "55lbs", "2.5ft", 6)

puts GoodDog.what_am_i
puts GoodDog.total_number_of_dogs

puts waldo.age
puts beau.age

puts waldo
puts beau








