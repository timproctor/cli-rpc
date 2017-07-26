require_relative '../models/in_out.rb'

class CLI
  def self.run
    puts "Reverse Polish Calculator is On"
    puts "Please enter an integer:"
    rpn = nil
    while rpn == nil
      entry = gets.chomp
      rpn = InOut.evaluate(entry)
      unless rpn == false
        output = InOut.read
        puts "RPC STACK: #{output} "
        puts "evaluation"
      end
    end
    puts "Goodbye."
    InOut.clear
  end
end

CLI.run
