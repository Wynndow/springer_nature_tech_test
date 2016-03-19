class UserInterface

  def get_command
    print "enter command: "
    gets.chomp
  end

  def output(to_display)
    print to_display
  end

end
