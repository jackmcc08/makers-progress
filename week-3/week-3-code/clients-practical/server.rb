require 'socket'

server = TCPServer.new(2345)

# puts Addrinfo.getaddrinfo

$secrets = []
# client = server.accept
# socket2 = server.accept

loop do
  Thread.start(server.accept) do |client|
    client.puts "HELLO CLIENT WHAT IS YOUR NAME?"
    name = client.gets.chomp
    client.puts "THAT'S A #{rand(1..2) == 1 ? 'LOVELY' : 'FANTASTIC'} NAME #{name}"

    loop do
      client.puts "Tell me your secrets (type 'quit' to stop)"
      secret = client.gets.chomp

      if secret == 'quit'
        client.puts $secrets.count
        client.puts "These are the secrets I know:"
        $secrets.each { |secret| client.puts secret }
        client.close
      end

      $secrets.push(secret)
    end
  end
end

# socket.puts "HELLO CLIENT WHAT IS YOUR NAME?"
# name = socket.gets.chomp
# socket.puts "THAT'S A LOVELY NAME #{name}"
#
# socket2.puts "Ja ja ja "
# name = socket2.gets.chomp
# socket2.puts "That's a terrible name #{name}"
# end
# socket.close
