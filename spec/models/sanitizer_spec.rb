require 'spec_helper'

describe "Sanitizer" do

  it "instantiates with instance variable input " do
    input = "aty3"
    sanitizer = Sanitizer.new(input)

    expect(sanitizer.input).to eq(input)
  end

  it "instantiates with instance variable arrayed_store" do
    
  end
end
