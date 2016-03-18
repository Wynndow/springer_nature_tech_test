class Canvas

  attr_reader :width, :height

  def initialize(width, height)
    @width = width
    @height = height
  end

  def content
     horizon_border + body_lines + horizon_border
  end

  def horizon_border
    first_line = ""
    (1..(width + 2)).each do
      first_line += "-"
    end
    first_line += "\n"
  end

  def body_lines
    height_lines = ""
    (1..height).each do
      bar = "|"
      (1..width).each do
        bar = bar + ' '
      end
      bar = bar + "|"
      height_lines += bar + "\n"
    end
    height_lines
  end

  def draw_line
  end
end
