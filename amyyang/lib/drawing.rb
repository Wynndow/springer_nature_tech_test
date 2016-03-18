require 'canvas'

class Drawing

  def parse(txt_command)
    txt_command.split(" ")
  end

  def command(txt_command)
    parameter = parse(txt_command)
    draw_command = parameter[0]

    case draw_command
    when "C"
      width = parameter[1].to_i
      height = parameter[2].to_i
      canvas = Canvas.new(width, height)
      canvas.content
    when "L"
      canvas = Canvas.new(width, height)
      canvas.draw_line
    else
      raise "Invalid command"
    end
  end
end
