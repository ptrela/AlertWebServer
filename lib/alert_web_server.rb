require 'socket'
require File.join(File.dirname(__FILE__), "request_parser")
require File.join(File.dirname(__FILE__), "response")

class AlertWebServer
  def run
    server = TCPServer.new('localhost', 2001)

    loop do
      client = server.accept

      Thread.new { handle_connection(client) }
    end
  end

  private

  def handle_connection(client)
    puts "New client! #{client}"

    request = client.readpartial(2048)
    request = RequestParser.new(request).run
    response = Response.new(request).run

    client.write(response)
    client.close
  end
end
