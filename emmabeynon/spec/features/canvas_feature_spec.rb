require 'canvas'

describe 'Canvas' do
  subject(:canvas) { Canvas.new(10, 4)}

  it 'creates a canvas with a specified width and height' do
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
