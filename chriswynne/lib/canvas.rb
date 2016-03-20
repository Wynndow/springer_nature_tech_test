class Canvas

  attr_reader :height, :width

  def initialize(width, height)
    @width = width
    @height = height
    @canvas = Array.new(height, Array.new(width, ' '))
    @canvas = Array.new(height).map{|elem| elem = Array.new(width, ' ')}

  end

  def draw
    horizontal = ("-" * (width + 2)) + "\n"
    body = @canvas.map{ |row| "|" + "#{row.join}" + "|\n" }.join
    horizontal + body + horizontal
  end

  def add_line(x1, y1, x2, y2)
    horizontal_line(x1, y1, x2, y2) if y1 == y2
    vertical_line(x1, y1, x2, y2) if x1 == x2
  end

  private

  def horizontal_line(x1, y1, x2, y2)
    for x_coord in (x1..x2)
      @canvas[height - y1][x_coord-1] = 'x'
    end
  end

  def vertical_line(x1, y1, x2, y2)

    for y_coord in (y1..y2)
      @canvas[height - y_coord][x1-1] = 'x'
    end
  end

end
