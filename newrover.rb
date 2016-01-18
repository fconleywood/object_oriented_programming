class Rover
  attr_accessor :x, :y, :direction

  def initialize(x, y, direction)
    @x = x
    @y = y
    @direction = direction
  end


  def read_instruction(instructions)
    instructions.each { |action| action == "M" ? move : turn(action) }
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
        end
      end
  end


   def move
      case @direction
      when "N" then @y += 1
      when "E" then @x += 1
      when "S" then @y -= 1
      when "W" then @x -= 1
      end
    end
end

    puts "Enter plateau size: "
    size = gets.chomp
    size = size.split("")

    puts "Rover One: Enter my x,y coordinates and orientation using N,W,E or S: "
    location_one = gets.chomp
    location_one = location_one.split("")


    puts "Enter your Rover One's action using L, R, M: "
    rover1_move = gets.chomp
    rover1_move = rover1_move.split("")


    puts "Rover Two: Enter my x,y coordinates and orientation using N,W,E or S: "
    location_two = gets.chomp
    location_two = location_two.split("")


    puts "Enter your Rover Two's action using L, R, M: "
    rover2_move = gets.chomp
    rover2_move = rover2_move.split("")

    x1 = location_one[0].to_i
    y1 = location_one[1].to_i
    direction1 = location_one[2]

    x2 = location_two[0].to_i
    y2 = location_two[1].to_i
    direction2 = location_two[2]

    rover1 = Rover.new(x1, y1, direction1)
    rover2 = Rover.new(x2, y2, direction2)

    rover1.read_instruction(rover1_move)
    rover2.read_instruction(rover2_move)


    puts "Rover 1 is located: #{rover1.x} #{rover1.y} #{rover1.direction}"
    puts "Rover 2 is located: #{rover2.x} #{rover2.y} #{rover2.direction}"
