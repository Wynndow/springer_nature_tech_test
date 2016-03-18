require_relative 'canvas.rb'

class Commander

COMMANDS= {
  "C" => ""
}

  def execute(command)
    command_params = command.split(" ")
    if command_check(command_params[0])
      canvas = Canvas.new(command_params[1].to_i, command_params[2].to_i)
      canvas.print
    else
      "Invalid command"
    end
  end

  def command_check(command_param)
    COMMANDS[command_param] ? true : false
  end
end