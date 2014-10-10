class Animal
  attr_accessor :name

  def initialize(name)
    @name = name
  end

  def speak
    "Hello!"
  end
end

class GoodDog < Animal
  attr_accessor :age

  def initialize(age, name)
    super(name)
    self.age = age
  end

  def speak
    super + " from GoodDog class"
  end

  def to_s
    "I am #{self.name}, and I am #{self.age} years old"
  end
end

sparky = GoodDog.new(5, "Sparky")
puts sparky
sparky.name = "Sparticus"
puts sparky