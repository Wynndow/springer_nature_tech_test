require 'canvas'

describe Canvas do

subject(:canvas) { described_class.new(2,3) }

  it 'draws a horizontal border of certain length' do
    expect(canvas.drawhorizontalborder(3)).to eq(
    "-----"
    )
  end

  it 'draws containing line' do
    expect(canvas.drawcontainingline(2)).to eq(
    "|  |"
    )

  end

end
