class Canvas

  def initialize(width, height)
    @width = width
    @height = height
  end

  def print
    horizontal_edge =  "-" * (@width + 2)
    body = "|" + (" " * @width) + "|\n"
    horizontal_edge + "\n" + (body * @height) + horizontal_edge
  end

end