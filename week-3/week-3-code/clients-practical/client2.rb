require 'socket'

socket = TCPSocket.new('fe80::c51:dd94:29d5:f3c6%en0', 2345)

# inet6 'fe80::c51:dd94:29d5:f3c6%en0' prefixlen 64 secured scopeid 0x6


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

# socket.close
# 192.168.1.18
