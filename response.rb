# frozen_string_literal: true

class Response
  def initialize(code)
    @code = code
  end

  attr_reader :code

  def run
    "#{code}"
  end
end