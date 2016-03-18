require 'canvas'

describe 'Canvas' do
  subject(:canvas) { Canvas.new(20, 4)}
  it 'creates a canvas with a specified width and height' do
    expect(canvas.width).to eq(20)
    expect(canvas.height).to eq(4)
  end
end
