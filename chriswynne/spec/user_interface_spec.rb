require 'user_interface.rb'

describe UserInterface do

  let(:ui) { described_class }

  it 'outputs the enter command promt to the command line' do
    expect { ui.new }.to output("enter command: ").to_stdout
  end

end
