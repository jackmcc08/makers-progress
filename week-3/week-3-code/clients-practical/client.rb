require 'socket'

socket = TCPSocket.new('localhost', 2345)

puts socket.gets
name = gets.chomp
puts "Wow what a rude server... I'm going to say #{name}"
socket.puts "#{name}"
puts socket.gets

loop do
  puts socket.gets
  secret = gets.chomp
  socket.puts secret
  if secret == 'quit'
    number = socket.gets
    number.to_i.times { puts socket.gets }
    return
  end
end
