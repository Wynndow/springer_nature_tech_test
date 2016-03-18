require 'canvas'

describe Canvas do
  w = 3
  h = 3
  subject(:canvas){ described_class.new(w, h) }

  blank_canvas3x3 = [
    [' ', ' ', ' '],
    [' ', ' ', ' '],
    [' ', ' ', ' ']
]

  describe '#canvas' do
    it 'can create a canvas' do
      expect(canvas.canvas).to eq blank_canvas3x3
    end
  end

  describe '#draw' do
    it 'can draw a point' do
      canvas.draw(0, 2)
      expect(canvas.canvas).to eq [
                                      [' ', ' ', ' '],
                                      [' ', ' ', ' '],
                                      ['x', ' ', ' ']
                                  ]
    end

    it 'can draw a horizontal line' do
      canvas.line(0, 2, 2, 2)
      expect(canvas.canvas).to eq [
                                      [' ', ' ', ' '],
                                      [' ', ' ', ' '],
                                      ['x', 'x', 'x']
                                  ]
    end

    it 'can draw a vertical line' do
      canvas.line(2, 0, 2, 2)
      expect(canvas.canvas).to eq [
                                      [' ', ' ', 'x'],
                                      [' ', ' ', 'x'],
                                      [' ', ' ', 'x']
                                  ]
    end
  end
end


# x.canvas.map{|i|i.join('')}.join("\n")