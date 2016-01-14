# Let's start by creating two classes: one called Student and another called
# Instructor.
class Person
   attr_accessor :name

   def greeting
      "Hi, my name is #{name}"
    end
  end


class Student < Person
  def learn
    puts "I get it!"
  end
end

  cristina = Student.new
  cristina.name = "Cristina"


class Instructor < Person
  def teach
    puts "Everything in Ruby is an Object"
  end
end

  chris = Instructor.new
  chris.name = "Chris"

# Call the teach method on your instructor instance and call the learn method
# on your student. Next, call the teach method on your student instance.
# Why doesn't that work? Leave a comment in your program explaining why.

chris.teach

cristina.learn

cristina.teach #This does not work because it is not connected to the method
# in a different class, so it returns undefined method `teach'.

# The student class has a method called learn that outputs "I get it!".
# The instructor class has a method called teach that outputs
# "Everything in Ruby is an Object".

# Create a parent Person class that contains the attribute name and an
# initializer to set the name.

# Both the instructor and the student should also be able to do a greeting,
# like "Hi, my name is #{name}".

#Create an instance of Instructor whose name is "Chris" and call his greeting.
#Create an instance of Student whose name is "Cristina" and call her greeting.
