# frozen_string_literal: true

require 'socket'
server = TCPServer.new 3000

while session = server.accept
  request = session.gets
  puts request

  method, path = request.split(' ')

  session.print "HTTP/1.1 200\r\n"
  session.print "\r\n"
  session.print File.open('index.html').read
  session.close
end
