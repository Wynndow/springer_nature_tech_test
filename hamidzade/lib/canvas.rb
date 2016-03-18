class Canvas
  attr_reader :canvas

  def initialize (w, h)
    @canvas = Array.new(h){ Array.new(w, ' ')}
  end

  def draw(x, y)
    canvas[y][x] = 'x'
  end

  def line(x1, y1, x2, y2)
    if y1 == y2
      (x1..x2).each{ |x_value| draw(x_value, y1) }
    end
  end
end