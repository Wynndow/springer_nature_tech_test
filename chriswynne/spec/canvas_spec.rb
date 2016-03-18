require 'canvas.rb'

describe Canvas do

  let(:canvas) {described_class}

  it 'creates a canvas with the correct height' do
    width = 1
    height = rand(1..10)
    new_canvas = canvas.new(width, height)
    expect(new_canvas.height).to eq(height)
  end

  it 'creates a canvas with the correct width' do
    width = rand(1..10)
    height = 1
    new_canvas = canvas.new(width, height)
    expect(new_canvas.width).to eq(width)
  end

  describe '#draw' do

    it 'can return the canvas as a string' do
      new_canvas = canvas.new(1,1)
      expect(new_canvas.draw).to eq(
      "---\n" +
      "| |\n" +
      "---\n"
      )
    end

  end




end
