  require './lib/canvas'

  loop do
    puts "enter command"
    command = gets.chomp
    canvas = Canvas.new
    puts canvas.userinput(command)
  end
