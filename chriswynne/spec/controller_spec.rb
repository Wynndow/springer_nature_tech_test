require 'controller.rb'

describe Controller do

  let(:ui) { double("ui") }
  let(:controller) {described_class.new(ui)}

  describe '#run' do

    it 'can get quit from it\'s loop' do
      allow(ui).to receive(:get_command).and_return("Q")
      allow(ui).to receive(:output)
      expect(ui).to receive(:get_command).once
      controller.run
    end

    it 'continues the loop until quit is supplied' do
      allow(ui).to receive(:get_command).and_return("C 20 4", "Q")
      allow(ui).to receive(:output)
      expect(ui).to receive(:get_command).twice
      controller.run
    end

    fit 'creates new canvas from C command' do
      ui = spy("ui")
      allow(ui).to receive(:get_command).and_return("C 4 1", "Q")
      controller = described_class.new(ui)
      controller.run
      expect(ui).to have_received(:output).with(
      "------\n"+
      "|    |\n"+
      "------\n")
    end

  end

  describe '#parse_string' do
    it 'can return the canvas string' do
      expect(controller.parse_string("C 4 1")).to eq(
      "------\n"+
      "|    |\n"+
      "------\n")
    end

    it 'should output an message if unrecognised command' do
      expect(controller.parse_string("R")).to eq("Incorrect command, please try again\n")
    end

  end

end
