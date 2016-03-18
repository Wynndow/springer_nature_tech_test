class Controller

  def initialize(user_interface)
    @user_interface = user_interface
  end

  def run
    quit = false
    until quit
      command = @user_interface.get_command
      quit = (command == "Q")
    end
  end

end
