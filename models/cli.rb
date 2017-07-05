require_relative '../models/in_out.rb'

class CLI
  def self.run
    puts "Reverse Polish Calculator is On"
    puts "Please enter an integer:"
    entry = gets.chomp
    input = InOut.write(entry)
    
    puts "Goodbye."
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
