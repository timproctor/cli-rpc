class CLI
  attr_accessor :input, :output

  def initialize
    puts "Reverse Polish Calculator is On"
    puts "Please enter an integer:"
    @input = gets.chomp
  end

  def write_input
    IO.write('./db/rpc_stack.rb', stack)
  end


end
