require_relative 'canvas.rb'

class Commander

  def execute(command)
    command_params = command.split(" ")
    canvas = Canvas.new(command_params[1].to_i, command_params[2].to_i)
    canvas.print
  end

end