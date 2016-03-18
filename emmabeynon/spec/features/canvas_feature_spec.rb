require 'canvas'

describe 'Canvas' do
  subject(:canvas) { Canvas.new(10, 4)}

  it 'creates a canvas with a specified width and height' do
    expect{ canvas.display }.to output(
      "------------\n" +
      "|          |\n" +
      "|          |\n" +
      "|          |\n" +
      "|          |\n" +
      "------------\n"
    ).to_stdout
  end

  it 'creates a line' do
    canvas.line(1,2,6,2)
    expect{ canvas.display }.to output(
      "------------\n" +
      "|          |\n" +
      "|xxxxxx    |\n" +
      "|          |\n" +
      "|          |\n" +
      "------------\n"
    ).to_stdout
  end

  it 'creates a line' do
    canvas.line(1,1,1,4)
    expect{ canvas.display }.to output(
      "------------\n" +
      "|x         |\n" +
      "|x         |\n" +
      "|x         |\n" +
      "|x         |\n" +
      "------------\n"
    ).to_stdout
  end
end
