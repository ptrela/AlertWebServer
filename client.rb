require 'socket'

socket = TCPSocket.new('localhost', 2001)

socket.write("GET / HTTP/1.1\r\nHost: localhost:2001\r\n\r\n")

puts socket.read

socket.close