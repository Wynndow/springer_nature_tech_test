require 'canvas'

describe Canvas do

subject(:canvas) { described_class.new }

  it 'understands the new canvas command' do
    expect(canvas.userinput("C 2 3")).to eq(
    "----"+
    "|  |"+
    "|  |"+
    "|  |"+
    "----"
    )
  end
end
