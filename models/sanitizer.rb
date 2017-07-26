require_relative 'in_out'

class Sanitizer
  OPERATORS = %W(+ - * /)
  attr_accessor :input

  def initialize(input)
    @input = input
    @arrayed_store = (InOut.read).split(" ")
  end

  def clean
    strip_spaces_off
    return false if has_quit?
    downcase_the_input

    case @input
    when letters_present
    when non_integers_present
    when operators_present
    else
      send_to_file
    end
  end

  def send_to_file
    InOut.write_to_file(@input)
  end

  def rewrite_to_file
    InOut.clear
    @arrayed_store.each { |number| InOut.write_to_file(number.to_s) }
  end

  def recalculate_stack
    @arrayed_store.pop(2)
    rewrite_to_file
  end

  def operate
    operand_l = @arrayed_store[-2].to_f
    operand_r = @arrayed_store[-1].to_f

    case @input
    when "+"
      @input = operand_l + operand_r
      recalculate_stack
    when "-"
      @input = operand_l - operand_r
      recalculate_stack
    when "/"
      @input = operand_l / operand_r
      recalculate_stack
    when "*"
      @input = operand_l * operand_r
      recalculate_stack
    else
    end
  end

  def operators_present
    OPERATORS.any? do |operator|
      if @input.include?(operator)
        if @arrayed_store.size <= 1
          @input = ""
          puts "Sorry, we need at least another number: "
        elsif @arrayed_store.size >= 2
          operate
        end
      end
    end
  end

  def non_integers_present
    pattern = %w(! @ # $ % ^ & ( ) _ ` ~ [ ] { } \ | : " ; ' , ? > < =)
    pattern.any? do |symbol|
      if @input.include?(symbol)
        @input = ""
        puts "RPC accepts only integers at this time. Please enter again: "
      end
    end
  end

  def letters_present
    ("a".upto "z").any? do |letter|
      if @input.include?(letter)
        @input = ""
        puts "RPC accepts only integers at this time. Please enter again: "
      end
    end
  end

  def downcase_the_input
    @input = @input.downcase
  end

  def has_quit?
    @input == 'q' || @input == 'quit'
  end

  def strip_spaces_off
    @input = @input.strip
  end
end
