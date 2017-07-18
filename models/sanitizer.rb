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
    downcase_the_input
    send_to_file
  end

  def downcase_the_input
    @input = @input.downcase
    puts "from downcae_the_input #{@input}"
  end

  def no_letters_please
  end

  def has_quit?
    @input == 'q' || @input == 'quit'
  end

  def send_to_file
    InOut.write(@input)
  end
end
