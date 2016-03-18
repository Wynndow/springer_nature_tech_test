require 'canvas'

class Command

    def userinput(input)
      components = input.split(' ')
      first_arg = components[1].to_i
      second_arg = components[2].to_i
      command = components[0]

      if command == 'C'
        Canvas.new(first_arg, second_arg).drawcanvas
      elsif command == 'L'
        Canvas.drawhorizontalline(first_arg, second_arg)
      end
    end

end
