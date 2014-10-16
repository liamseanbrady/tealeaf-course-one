# 1. Name what each of the below is:

a = 1  # local var/Fixnum
# => ex. a is a local variable, and is a Fixnum object with   # comment
value 1 # error
@a = 2  # instance variable
user = User.new  # Creating an instance of a class
user.name # using the name getter method to retieve the value of the name ivar.
user.name = "Joe" # using the name setter method to set the value of the name ivar.

# 2. How does a class mixin a module?

A class mixes in a module by doing 'include module' at the top of the class definition.

# 3. What's the difference between class variables and instance variables?

A class variable is declared at the class level, where as an instance variable is declared at the instance level.
A class variable can only be accessed at the class level. An ivar can only be accessed at the instance level.

# 4. What does attr_accessor do?

attr_accessor creates getter and setter methods for ivars. Allows easy access and readability for getters and setters.

# 5. How would you describe this expression: Dog.some_method

This is using the class method 'some_method' on the Dog class.

# 6. In Ruby, what's the difference between subclassing and mixing in modules?

Subclassing means the subclass inherits from its superclass. Mixing in a module is basically the same as copy and pasting the
code into the class. Modules do not create objects. Subclassing from a superclass does.

# 7. Given that I can instantiate a user like this: User.new('Bob'), what would the initialize method look like for the User class?

def initialize(name)
  @name = name
end

# 8. Can you call instance methods of the same class from other instance methods in that class?

Yes, you can do this as long as they are in the same class.

# 9. When you get stuck, what's the process you use to try to trap the error?

Use binding.pry to assess what's happening at specific points in the program.












