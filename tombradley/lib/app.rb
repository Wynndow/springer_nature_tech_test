class Draw

  def execute_command(command)
    output_str = ''
    command.split
  end
end



class CommandLineDraw
  def request_command(*args)
    print(*args)
    gets.chomp
  end

  def output_command(command)
    puts command
  end

  # while true
  #   command = request_command "enter command: "
  #   output_command(command)
  # end
end
