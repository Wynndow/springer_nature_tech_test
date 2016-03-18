require 'canvas'

class CreateCanvasCommand

  def initialize(width, height)
    @width = width
    @height = height
  end

  def execute
    Canvas.new(@width, @height)
  end

end
