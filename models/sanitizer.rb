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
    return false if has_quit?
    no_letters_please
    send_to_file
  end

  def no_letters_please
    letters = ('a-zA-Z').to_a
    return false if letters.include?(@input)
  end

  def has_quit?
    @input == 'q' || @input == 'quit'
  end

  def send_to_file
    InOut.write(@input)
  end
end
