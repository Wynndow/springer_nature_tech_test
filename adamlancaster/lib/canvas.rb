class Canvas

  def initialize(width, height)
    @width = width
    @height = height
    @board = Array.new(@height, Array.new(@width, ' '))
  end

  def print
    horizontal_edge =  "-" * (@width + 2)
    body = @board.map {|line| "|" + line.join("")+ "|"}.join("\n")
    horizontal_edge + "\n" + body + "\n" + horizontal_edge
  end

  def print_line(start_x, start_y, end_x, end_y)
    
  end

end
