require 'spec_helper'

describe "Rpc IO, the Input" do

  before do
    new_rpc = RpcIO.new
  end

  it "#write_input stores input value" do
    STDIN = 5
    # input = IO.pipe
    # input.write("5")

    new_rpc.write_input



    expect(test.input).to eq("5")
  end
end
