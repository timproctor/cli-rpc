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
    unless letters_present
      send_to_file
    end
  end

  def downcase_the_input
    @input = @input.downcase
  end

  def letters_present
    alphabet = ('a'..'z').to_a

    alphabet.any? do |letter|
      @input.include?(letter)
      @input = ""
      puts "RPC accepts only integers at this time. Please enter again: "
    end

  end

  def has_quit?
    @input == 'q' || @input == 'quit'
  end

  def send_to_file
    InOut.write(@input)
  end
end
