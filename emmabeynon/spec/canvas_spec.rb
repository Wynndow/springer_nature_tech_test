require 'canvas'

describe Canvas do
  subject(:canvas) { described_class.new(10, 4)}

  describe '#default' do
    it 'initializes with a width' do
      expect(canvas.width).to eq(10)
    end

    it 'initializes with a height' do
      expect(canvas.height).to eq(4)
    end

    it 'displays the canvas' do
      expect(canvas.display).to eq(
        "------------\n" +
        "|          |\n" +
        "|          |\n" +
        "|          |\n" +
        "|          |\n" +
        "------------\n"
      )
    end
  end

  describe '#line' do
    it 'displays a line on the canvas' do
      canvas.line(1,2,6,2)
      expect(canvas.display).to eq(
        "------------\n" +
        "|          |\n" +
        "|xxxxxx    |\n" +
        "|          |\n" +
        "|          |\n" +
        "------------\n"
      )
    end
  end
end
