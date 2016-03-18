def request_command(*args)
  print(*args)
  gets.chomp
end

def execute_command(command)
  puts command
end

while true
  command = request_command "enter command: "
  execute_command(command)
end
