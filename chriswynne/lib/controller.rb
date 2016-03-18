require 'canvas.rb'

class Controller

  def initialize(user_interface)
    @ui = user_interface
  end

  def run
    quit = false
    until quit
      command = @ui.get_command
      @ui.output(parse_string command)
      quit = (command == "Q")
    end
  end

  def parse_string(command)
    command_array = command.split(' ')
    if command_array[0] == "C"
      command = Canvas.new(command_array[1].to_i, command_array[2].to_i)
      command.draw
    end
  end
end
