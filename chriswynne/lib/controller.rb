require_relative 'canvas.rb'

class Controller

  def initialize(user_interface)
    @ui = user_interface
  end

  def run
    command = nil
    until command == "Q"
      command = @ui.get_command
      @ui.output(parse_string(command))
    end
  end

  def parse_string(command)
    command_array = command.split(' ')
    if command_array[0] == "C"
      canvas = Canvas.new(command_array[1].to_i, command_array[2].to_i)
      canvas.draw
    else
      "Incorrect command, please try again\n"
    end
  end
end
