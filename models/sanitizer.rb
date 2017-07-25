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

    case @input
    when letters_present
    when non_integers_present
    else
      send_to_file
    end
  end

  def downcase_the_input
    @input = @input.downcase
  end

  def letters_present
    ("a".upto "z").any? do |letter|
      if @input.include?(letter)
        @input = ""
        puts "RPC accepts only integers at this time. Please enter again: "
      end
    end
  end

  def non_integers_present
    pattern = %w(! @ # $ % ^ & ( ) _ ` ~ [ ] { } \ | : " ; ' , / ? > < =)
    pattern.any? do |symbol|
      if @input.include?(symbol)
        @input = ""
        puts "RPC accepts only integers at this time. Please enter again: "
      end
    end
  end

  def no_operators_before_operands
    operators = %W(+ - * %)
    
  end

  def has_quit?
    @input == 'q' || @input == 'quit'
  end

  def send_to_file
    InOut.write_to_file(@input)
  end
end
