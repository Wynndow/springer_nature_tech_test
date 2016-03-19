require_relative 'canvas.rb'
require_relative 'controller.rb'
require_relative 'user_interface.rb'

controller = Controller.new(UserInterface.new)
controller.run
