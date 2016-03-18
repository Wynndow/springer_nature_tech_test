require 'canvas'

describe Canvas do

  it 'instantizes with width and height' do
    canvas = Canvas.new(5, 6)
    expect(canvas.width).to eq(5)
    expect(canvas.height).to eq(6)
  end



end
