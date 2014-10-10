# Create a class 'Student' with attributes name and grade. 
# Do NOT make the grade getter public, so joe.grade will raise an error. 
# Create a better_grade_than? method, that you can call like so...

# puts "Well done!" if joe.better_grade_than?(bob)

class Student
  attr_accessor :name
  attr_writer :grade

  def initialize(n, g)
    self.name = n
    self.grade = g
  end

  def better_grade_than?(other_student)
    grade > other_student.grade
  end

  protected

  def grade
    @grade
  end
end

joe = Student.new("Joe", 3.2)
bob = Student.new("Bob", 2.5)
puts "Well done" if joe.better_grade_than?(bob)