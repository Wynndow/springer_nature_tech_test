require 'canvas.rb'

describe Canvas do
  let(:canvas) { described_class }

  describe '.new' do
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

  describe '#draw' do
    it 'can return the correct width canvas' do
      new_canvas = canvas.new(4, 1)
      expect(new_canvas.draw).to eq(
        "------\n" \
        "|    |\n" \
        "------\n"
      )
    end

    it 'can return the correct height canvas' do
      new_canvas = canvas.new(1, 4)
      expect(new_canvas.draw).to eq(
        "---\n" \
        "| |\n" \
        "| |\n" \
        "| |\n" \
        "| |\n" \
        "---\n"
      )
    end
  end

  describe '#add_line' do

    it 'can add a horizontal line to the canvas' do
      new_canvas = canvas.new(4, 4)
      new_canvas.add_line(1, 3, 3, 3)
      expect(new_canvas.draw).to eq(
      "------\n" +
      "|    |\n" +
      "|    |\n" +
      "|xxx |\n" +
      "|    |\n" +
      "------\n"
      )
    end

    it 'can add a vertical line to the canvas' do
      new_canvas = canvas.new(4, 4)
      new_canvas.add_line(2, 1, 2, 3)
      expect(new_canvas.draw).to eq(
      "------\n" +
      "| x  |\n" +
      "| x  |\n" +
      "| x  |\n" +
      "|    |\n" +
      "------\n"
      )
    end

  end
end
