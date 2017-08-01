require 'spec_helper'

describe "Sanitizer" do

  it "instantiates with #input " do
    input = "aty3"
    sanitizer = Sanitizer.new(input)

    expect(sanitizer.input).to eq(input)
  end
end
