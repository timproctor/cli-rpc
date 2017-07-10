require_relative 'in_out'

class Sanitizer
  attr_accessor :input

  def initialize(input)
    @input = input
  end

  def strip_spaces_off
    @input = @input.strip
  end

  def clean
    strip_spaces_off
    send_to_file
  end

  def send_to_file
    InOut.write(@input)
  end
end
