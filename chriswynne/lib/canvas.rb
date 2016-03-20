class Canvas

  attr_reader :height, :width

  def initialize(width, height)
    @width = width
    @height = height
    @canvas = Array.new(height, Array.new(width, ' ')) 
  end

  def draw
    horizontal = ("-" * (width + 2)) + "\n"
    body = @canvas.map{ |row| "|" + "#{row.join}" + "|\n" }.join
    horizontal + body + horizontal
  end

end
