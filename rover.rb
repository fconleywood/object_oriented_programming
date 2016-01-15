
class Rover

attr_accessor :x :y :dir

def initialize=(x, y, direction)
  @x = x
  @y = y
  @direction = direction
end

def read_instruction(instructions)
  instructions_list = instructions.split("")
  instructions_list.each do |action|
    if action == "M"
      move
    elsif
      turn
    else
      puts "Try again!"
    end
  end
end

def turn(turn_direction)
  case turn_direction
    when "L"
      if @direction == "N"
        @direction = "W"
      elsif @direction == "W"
        @direction = "S"
      elsif @direction == "S"
        @direction = "E"
      elsif @direction == "E"
        @direction = "N"
      else puts "Incorect coordinates"
    end
    when "R"
      if @direction == "N"
        @direction = "E"
      elsif @direction == "E"
        @direction = "S"
      elsif @direction == "S"
        @direction = "W"
      elsif @direction == "W"
        @direction = "N"
      else puts "Incorect coordinates"
    end
  end
end

#not sure if methods should be modules

def move(direction)
  case direction
  when @direction == "N" {(@x += 1) if > x }
  when @direction == "E" { @y += 1 }
  when @direction == "S" { @x -= 1 }
  when @direction == "W" { @y -= 1 }
end

end

puts "Enter plateau size: "
size = gets.chomp
size = size.split("")


puts "Enter your Rover One's x,y location and which direction it is facing: "
location_one = gets.chomp
location_one = location_one.upcase
read_instruction(location_one)

puts "Enter your Rover One's  action using L, M, R: "
action_one = gets.chomp
action_one = action_one.upcase
read_instruction(action_one)


puts "Enter your Rover Two's x,y location and which direction it is facing: "
location_two = gets.chomp
location_two = location_two.upcase
read_instruction(location_two)

puts "Enter your Rover Two's action using L, M, R: "
action_two = gets.chomp
action_two = action_two.upcase
read_instruction(action_two)
