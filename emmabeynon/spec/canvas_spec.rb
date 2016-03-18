require 'canvas'

describe Canvas do
  subject(:canvas) { described_class.new(20, 4)}

  describe '#default' do
    it 'initializes with a width' do
      expect(canvas.width).to eq(20)
    end

    it 'initializes with a height' do
      expect(canvas.height).to eq(4)
    end
  end
end
