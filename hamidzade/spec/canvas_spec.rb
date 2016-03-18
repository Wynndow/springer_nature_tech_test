require 'canvas'

describe Canvas do
  w = 2
  h = 3
  subject(:canvas){ described_class.new(w, h) }

  blank_canvas2x3 = [
    [' ', ' '],
    [' ', ' '],
    [' ', ' ']
]

  describe '#canvas' do
    it 'can create a canvas' do
      expect(canvas.canvas).to eq blank_canvas2x3
    end
  end

  describe '#draw' do
    it 'can draw a ' do
      canvas.draw(2, 0)
      expect(canvas.canvas).to eq [
    [' ', ' '],
    [' ', ' '],
    ['x', ' ']
]
    end
  end
end