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




end
