require 'controller.rb'

describe Controller do

  let(:ui) { double("ui") }
  let(:controller) {described_class.new(ui)}

  describe '#get_command' do

    it 'can get quit from it\'s loop' do
      allow(ui).to receive(:get_command).and_return("Q")
      expect(ui).to receive(:get_command).once
      controller.run
    end

    it 'continues the loop intil quit is supplied' do
      allow(ui).to receive(:get_command).and_return("C 20 4", "Q")
      expect(ui).to receive(:get_command).twice
      controller.run
    end

    it 'creates new canvas from C command' do
      allow(ui).to receive(:get_command).and_return("C 1 4", "Q")
      expect(ui).to receive(:output).with(
      "------ \n"+
      "|    | \n"+
      "------ \n")
      controller.run
    end

  end

  describe '#parse_string' do
    it 'can return the canvas string' do
      expect(controller.parse_string("C 4 1")).to eq(
      "------\n"+
      "|    |\n"+
      "------\n")
    end

  end

end
