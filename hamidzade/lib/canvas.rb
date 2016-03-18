class Canvas
  attr_reader :canvas

  def initialize (w, h)
    @canvas = Array.new(h){ Array.new(w, ' ')}
  end

  def draw(x, y)
    canvas[y][x] = 'x'
  end

  def line(x1, y1, x2, y2)
    (x1..x2).each{ |x_value| draw(x_value, y1) } if y1 == y2
    (y1..y2).each{ |y_value| draw(x1, y_value) } if x1 == x2
  end

  def rectangle(x1, y1, x2, y2)
    line(x1, y1, x2, y1) #top
    line(x2, y1, x2, y2) #right
    line(x1, y2, x2, y2) #bottom
    line(x1, y1, x1, y2) #left
  end
end