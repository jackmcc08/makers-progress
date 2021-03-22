# Exercise 1 & 2

require 'socket'
require_relative 'notebook'

server = TCPServer.new(2345)

socket = server.accept

notebook = Notebook.new

loop do
  socket.puts "What do you say? (type 'quit' to exit)"
  socket.puts "Add it to your notebook if you want"
  they_said = socket.gets.chomp

  socket.close if they_said == 'quit'

  socket.puts "You said: #{they_said}."

  socket.puts "Add to your notebook? Y/N"
  decision = socket.gets.chomp
  if decision == 'yes'
    notebook.add_note("Jack", they_said)
  end

  socket.puts "Display your notes? Y/N"
  decisions = socket.gets.chomp
  if decisions == 'yes'
    notebook.display
  end
end
