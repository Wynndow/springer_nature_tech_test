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

end



  # until userCommand = 'q'
  #   send userCommand to canvas
  #   canvas.toScreen
  #   userCommand
  # end
