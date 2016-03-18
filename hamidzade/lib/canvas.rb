class Canvas
  attr_reader :canvas

  def initialize (w, h)
    @w = w
    @h = h
    @canvas = Array.new(h, Array.new(w, ' '))
  end
end