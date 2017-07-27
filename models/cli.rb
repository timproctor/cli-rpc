require_relative '../models/in_out.rb'

class CLI
  def self.run
    puts "RPC is ON, operators are +, -, *, or /"
    puts "Please enter a number: "
    rpn = nil
    while rpn == nil
      entry = gets.chomp
      rpn = InOut.evaluate(entry)
      unless rpn == false
        output = InOut.read
        puts "STACK: #{output}"
      end
    end
    puts "Goodbye."
    InOut.clear
  end
end

CLI.run
