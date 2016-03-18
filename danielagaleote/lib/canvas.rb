class Canvas

  def intilialise

  end

  def userinput(input)
    components = input.split(' ')
    command = components[0]
    width = components[1].to_i
    height = components[2]
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
    result+=drawhorizontalborder(width)
    result+=drawcontainingline(width)
    result+=drawhorizontalborder(width)
    return result
  end

end
