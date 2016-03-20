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
    command_type = command_array[0]
    case command_type
      when "C"
        create_canvas(command_array)
      when "L"
        create_line(command_array)
      else
        "Incorrect command, please try again\n"
    end
  end

  private

  def create_canvas(command_array)
    @canvas = Canvas.new(command_array[1].to_i, command_array[2].to_i)
    @canvas.draw
  end

  def create_line(command_array)
    @canvas.add_line(command_array[1].to_i, command_array[2].to_i, command_array[3].to_i, command_array[4].to_i)
    @canvas.draw
  end
end
