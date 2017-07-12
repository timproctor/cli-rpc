require_relative '../models/in_out.rb'

class CLI
  def self.run
    puts "Reverse Polish Calculator is On"
    puts "Please enter an integer:"
    i = 0
    while i < 5
      i += 1
      puts i
      entry = gets.chomp
      input = InOut.evaluate(entry)
      output = InOut.read
      puts "You typed #{output}. "
    end
    puts "Goodbye."
    InOut.clear
  end

  # def self.write_input(input)
  #   stack = []
  #   IO.write('./db/rpc_stack.rb', stack.push(input))
  # end
  #
  # def self.get_input
  #   input = gets.chomp
  #   parse_input(input)
  # end
  #
  # def self.parse_input(input)
  #   if input != 'q'
  #     write_input(input)
  #   else
  #     return
  #   end
  #   run
  # end
end

CLI.run
