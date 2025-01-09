require 'socket'

server = TCPServer.new('localhost', 2001)

def handle_connection(client)
  puts "New client! #{client}"

  request = client.readpartial(2048)

  puts request
  client.close
end

loop do
  client = server.accept

  Thread.new { handle_connection(client) }
end
