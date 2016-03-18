class Drawing

  def parse(txt_command)
    txt_command.split(" ")
  end

  def command(txt_command)
    parameter = parse(txt_command)
    width = parameter[1].to_i
    height = parameter[2].to_i

    first_line = ""
    (1..(width + 2)).each do
      first_line = first_line + "-"
    end
    first_line += "\n"

    height_lines = ""
    (1..height).each do
      bar = "|"
      (1..width).each do
        bar = bar + ' '
      end
      bar = bar + "|"
      height_lines += bar + "\n"
    end

    first_line + height_lines + first_line
  end

end
