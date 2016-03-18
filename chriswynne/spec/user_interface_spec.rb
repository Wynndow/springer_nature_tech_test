require 'user_interface.rb'

describe UserInterface do

  let(:ui) { described_class.new }

  it 'outputs the enter command promt to the command line' do
    expect{ ui.get_command }.to output("enter command: ").to_stdout
  end

  it 'takes input from the user' do
    allow(ui).to receive(:get_command).and_return('C')
    expect(ui.get_command).to eq('C')
  end

end
