# frozen_string_literal: true

class Response
  def initialize(request)
    @request = request
  end

  def run
    data = "<html>test</html>"

    [
      "HTTP/1.1 200\r\n",
      "Content-Length: #{data.size}\r\n",
      "\r\n",
      "#{data}\r\n"
    ].join
  end
end