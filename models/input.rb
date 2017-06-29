class Input
  attr_reader :input

  def initialize
    puts "Reverse Polish Calculator is On"
    puts "Please enter an integer:"
    @input = gets.chomp
  end
end

input = Input.new.input
puts "you entered #{input} as an integer"
