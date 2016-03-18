class Draw

  def execute_command(command)
    width, height = command.split[1..2].map(&:to_i)
    output = ''
    topbottom = (1..(width + 2)).map { '-' }.join + "\n"
    output += topbottom
    height.times { output += '|' + (1..width).map { ' ' }.join + '|' + "\n" }
    output += topbottom
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
