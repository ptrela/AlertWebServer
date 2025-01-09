require 'socket'

socket = TCPSocket.new('localhost', 2001)

socket.write "GET / HTTP/1.1"