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
    quit if has_quit?
    send_to_file
  end

  def has_quit?
    @input == 'quit'
    @input == 'q'
  end

  def quit
    puts "quit method ran"
  end

  def send_to_file
    InOut.write(@input)
  end
end
