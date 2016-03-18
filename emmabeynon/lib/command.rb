require_relative 'canvas'

class CommandExecutor

  attr_reader :canvas, :canvas_class

  def initialize(canvas=Canvas)
    @canvas_class = canvas
    @canvas = nil
  end

  def execute(command)
    parameters_list = command.split(" ")
    if parameters_list[0] == "C"
      @canvas = canvas_class.new(parameters_list[1].to_i,parameters_list[2].to_i)
      canvas.display
    end
  end
end
