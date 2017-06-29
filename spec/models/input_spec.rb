require 'spec_helper'

describe "Input" do
  it "must be in the form of an integer" do
    byebug
    test = Input.new
    send = IO.pipe
    send.write("5")



    expect(test.input).to eq("5")
  end
end
