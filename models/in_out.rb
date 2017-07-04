class InOut
  attr_accessor :inputs
  def initialize(*inputs)
    @inputs = inputs[0]
  end

  def confirm_message
    puts "You typed #{inputs}."
  end
end
