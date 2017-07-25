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
    when operator_before_operand
    when operator_can_opperate
    else
      send_to_file
    end
  end

  def operator_can_opperate
    
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

  def operator_before_operand
    operators = %W(+ - * %)

    operators.any? do |operator|
      if @input.include?(operator)
        arrayed_store = (InOut.read).split(" ")
        minimum_store = arrayed_store[0,2]
        if minimum_store.size == 1
          @input = ""
          puts "Sorry, we need at least another number: "
        end
      end
    end
  end



  def has_quit?
    @input == 'q' || @input == 'quit'
  end

  def send_to_file
    InOut.write_to_file(@input)
  end
end
