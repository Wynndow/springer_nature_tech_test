class Canvas

  attr_reader :width, :height, :contents
  def initialize(width, height)
    @width = width
    @height = height
    @contents = height.times.map do |i|
      row = Array.new(width)
      row.fill(" ")
      row
    end
  end

  def display
    horizontal = '-' * (width + 2) + "\n"
    bodyRows = contents.map do |row|
      ("|" + row.join("") + "|\n")
    end
    body = bodyRows.join("")
    horizontal + body + horizontal
  end

  def line(x1, y1, x2, y2)
    if y1 == y2
      for i in x1..x2 do
        contents[y1-1][i-1] = 'x'
      end
    elsif x1 == x2
      for i in y1..y2 do
        contents[i-1][x1-1] = 'x'
      end
    else
      raise 'Invalid arguments'
    end
  end
end
