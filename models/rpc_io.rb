class RpcIO
  require_relative './models/rpc_io.rb'
  attr_accessor :input, :output

  def initialize
    puts "Reverse Polish Calculator is On"
    puts "Please enter an integer:"
    @input = gets.chomp
  end

  def write_input
    IO.write('rpc_io' input.push(@input))
  end

  
end
