# frozen_string_literal: true

require 'socket'
server = TCPServer.new 5678

while session = server.accept
  session.puts "Hello world! The time is #{Time.now}"
  session.close
end
