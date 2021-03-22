require 'socket'

server = TCPServer.new(5002)

loop do
  socket = server.accept
  while line = socket.gets
    puts line
  end
end
