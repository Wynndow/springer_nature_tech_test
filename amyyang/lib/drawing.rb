require 'canvas'

class Drawing

  def parse(txt_command)
    txt_command.split(" ")
  end

  def command(txt_command)
    parameter = parse(txt_command)

    width = parameter[1].to_i
    height = parameter[2].to_i

    canvas = Canvas.new(width, height)
    canvas.content
  end
end
