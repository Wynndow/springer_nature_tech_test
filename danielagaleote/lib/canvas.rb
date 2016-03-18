class Canvas

  attr_accessor :currentstate
  attr_reader :width, :height

  def initialize(width,height)
    @width = width
    @height = height
  end

  def drawhorizontalborder(width)
    result = "--"
    width.times do
      result += "-"
    end
    return result
  end

  def drawcontainingline(width)
    result = "|"
    width.times do
      result += " "
    end
    return result + "|"
  end

  def self.drawhorizontalline(x1, x2)
    drawcanvas
  end

  def self.drawcanvas
    result = ""
    result += drawhorizontalborder(@width)+"\n"
    @height.times{result+=drawcontainingline(@width)+"\n"}
    result += drawhorizontalborder(@width)+"\n"
    @currentstate = result

  end

  def drawcanvas
    result = ""
    result += drawhorizontalborder(width)+"\n"
    height.times{result+=drawcontainingline(width)+"\n"}
    result += drawhorizontalborder(width)+"\n"
    @currentstate = result

  end

end
