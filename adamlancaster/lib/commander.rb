require_relative 'canvas.rb'

class Commander

  COMMANDS= {
    C: ->(command_params){ Integer(command_params[1]) && Integer(command_params[2]) rescue false}
  }

  def execute(command)
    command_params = command.split(" ")
    if check_command(command_params) && argument_check(command_params)
      canvas = Canvas.new(command_params[1].to_i, command_params[2].to_i)
      canvas.print
    else
      "Invalid command"
    end
  end

  def argument_check(command_params)
    COMMANDS[command_params[0].to_sym].call(command_params)
  end

  def check_command(command_params)
    COMMANDS.key?(command_params[0].to_sym)
  end

end