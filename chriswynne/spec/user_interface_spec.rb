require 'user_interface.rb'

describe UserInterface do

  let(:ui) { described_class.new }

  describe '#get_command' do

    it 'outputs the enter command promt to the command line' do
      allow(ui).to receive(:gets).and_return('C')
      expect{ ui.get_command }.to output("enter command: ").to_stdout
    end

    it 'takes input from the user' do
      allow(ui).to receive(:gets).and_return('C')
      expect(ui.get_command).to eq('C')
    end

  end

  describe '#output' do

    it 'prints out "Hello"' do
      to_display = "Hello World"
      expect{ ui.output(to_display) }.to output("Hello World").to_stdout
    end

  end

end
