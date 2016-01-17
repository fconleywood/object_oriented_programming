
class Rover
  attr_accessor :x, :y, :dir

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end

def read_instruction(instructions)
  # coordinates = location.split("")
  # coordinates
  # @x = coordinates[0].to_i
  # @y = coordinates[2].to_i
  # @direction = coordinates[4].upcase
  instructions_list = instructions.split("")
  puts "#{@x}, #{@y}, #{@direction}"
  instructions_list.each do |action|
    if action == "M"
      move(action)
    elsif action == "L" || "R"
      turn(action)
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
      when @direction == "N" = {@y += 1} #if answer is beigger > then b plateau == 0
      when @direction == "E" = {@x += 1}
      when @direction == "S" = {@y -= 1}
      when @direction == "W" = {@x -= 1}
      end
    end
# def test
#   testrover = Rover.new(1,2,"N")
#   testrover.read_instruction("LMLMLMLMM")
# end

#I need to output the information of new coordinates

# rover = Rover.new
# rover = "Rover One"
end

    puts "Enter plateau size: "
    size = gets.chomp
    size = size.split("").to_i

    puts "Rover One: Enter my x,y coordinates and compass orientation using N,W,E or S: "
    location_one = gets.chomp
    location_one = location_one.upcase.split("")


    puts "Enter your Rover One's action using L, M, R: "
    rover1_move = gets.chomp
    rover1_move = action_one.upcase


    puts "Rover Two: Enter my x,y coordinates and compass orientation using N,W,E or S: "
    location_two = gets.chomp
    location_two = location_two.upcase.split("")


    puts "Enter your Rover Two's action using L, M, R: "
    rover2_move = gets.chomp
    rover2_move = rover2_move.upcase

    rover1 = Rover.new(location_one[0].to_i,location_one[2].to_i,location_one[4])
    rover2 = Rover.new(location_two[0].to_i,location_two[2].to_i,location_two[4])

    rover1.read_instruction(rover1_move)
    rover2.read_instruction(rover2_move)


    puts "Rover 1 is located: #{rover1.x} #{rover1.y} #{rover1.direction}"
    puts "Rover 2 is located: #{rover2.x} #{rover2.y} #{rover2.direction}"
