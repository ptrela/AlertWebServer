require 'socket'
require './request_parser'
require './response'
require './response'

server = TCPServer.new('localhost', 2001)

def handle_connection(client)
  puts "New client! #{client}"

  request = client.readpartial(2048)
  request = RequestParser.new(request).run
  response = Response.new(request).run

  client.write(response)
  client.close
end

loop do
  client = server.accept

  Thread.new { handle_connection(client) }
end
