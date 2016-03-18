require_relative 'command'
require_relative 'canvas'

loop do
  puts "enter command"
  commandstring = gets.chomp
  command = Command.new
  puts command.userinput(commandstring)
end
