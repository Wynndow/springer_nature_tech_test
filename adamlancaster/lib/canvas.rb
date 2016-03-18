class Canvas

  def print(width, height)
    horizontal_edge =  "-" * (width + 2)
    body = "|" + (" " * width) + "|\n"
    horizontal_edge + "\n" + (body * height) + horizontal_edge
  end

end