require_relative 'lib/commander.rb'

class App

  command = Commander.new

  puts "Enter Command"
  response = gets
  puts command.execute(response)



end