# frozen_string_literal: true

class RequestParser
  def initialize(request)
    @request = request
  end

  def run
    request_parts = @request.split

    {
      method: request_parts[0],
      path: request_parts[1],
      headers: request_parts[2]
    }
  end
end