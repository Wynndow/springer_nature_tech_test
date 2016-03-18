require 'byebug'
require_relative 'command'
command = CommandExecutor.new
puts "Enter a command"
new_command = gets.chomp
while new_command != 'Q'
  command.execute(new_command)
  puts "Enter a command"
  new_command = gets.chomp
end
