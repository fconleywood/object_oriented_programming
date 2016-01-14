# Let's start by creating two classes: one called Student and another called
# Instructor.
class Person
   attr_accessor :name
 end

class Student < Person
  def self.learn
    puts "I get it!"
end

class Instructor < Person
  def self.teach
    puts "Everything in Ruby is an Object".
end

# The student class has a method called learn that outputs "I get it!".
# The instructor class has a method called teach that outputs
# "Everything in Ruby is an Object".

# Create a parent Person class that contains the attribute name and an
# initializer to set the name.
