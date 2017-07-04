class InOut
  attr_accessor :inputs
  def initialize(*inputs)
    @inputs = inputs.chommp
  end

  def confirm_message
    "You typed #{inputs}."
  end
end
