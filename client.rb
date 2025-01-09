require 'socket'

socket = TCPSocket.new('localhost', 2001)

socket.write("GET / HTTP/1.1\r\nHost: localhost:2001\r\n\r\n")

# Read and print the response
response = socket.read
puts "Response from server:"
puts response

socket.close