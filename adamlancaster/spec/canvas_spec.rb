require 'canvas.rb'

describe Canvas do
  subject(:canvas){described_class.new}
  
  it "prints a canvas" do
    expect(canvas.print(2,2)).to eq(
      "----\n"+
      "|  |\n"+
      "|  |\n"+
      "----")

  end

end
