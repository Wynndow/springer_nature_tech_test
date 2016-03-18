require 'command'

class Input

  def initialize
    print "Enter Command"
  end

  def userCommand
    input = gets.chomp
    arr = input.split(" ")
    arr.map do |x|
      x =~ /\d+/ ? x.to_i : x
    end
  end

  def commandParser(commandElems)
    if commandElems[0] == 'C'
      CreateCanvasCommand.new(commandElems[1],commandElems[2])
    end
  end

  def showOnScreen
    commandParser(userCommand).execute.toScreen
  end

end



  # until userCommand = 'q'
  #   send userCommand to canvas
  #   canvas.toScreen
  #   userCommand
  # end
