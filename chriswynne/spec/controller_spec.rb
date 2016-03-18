require 'controller.rb'

describe Controller do

  let(:ui) { double("ui") }
  let(:controller) {described_class.new(ui)}

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

end
