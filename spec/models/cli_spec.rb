require 'spec_helper'

describe "Rpc IO, the Input" do

  it "#write_input stores input value" do
    new_rpc = RpcIO.new
    byebug
    input = IO.pipe
    input.write("5")
    new_rpc.write_input
    stack = File.read('Users/timproctor/Documents/Projets/cli-rpc/db/rpc_stack.rb')



    expect(stack.fist).to eq("5")
  end
end
