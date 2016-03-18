class Canvas

  def intilialise

  end

  def userinput(input)
    components = input.split(' ')
    command = components[0]
    width = components[1].to_i
    height = components[2].to_i
    drawcanvas(width, height)
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

  def drawcanvas(width, height)
    result=""
    result+=drawhorizontalborder(width)+"\n"
    height.times{result+=drawcontainingline(width)+"\n"}
    result+=drawhorizontalborder(width)+"\n"
    return result
  end

end
