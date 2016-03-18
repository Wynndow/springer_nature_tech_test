require 'canvas.rb'

describe Canvas do
  subject(:canvas){described_class.new}
  
  it "prints a canvas of 2 by 2" do
    expect(canvas.print(2,2)).to eq(
      "----\n"+
      "|  |\n"+
      "|  |\n"+
      "----")
  end

  it "prints a canvas of 4 by 4" do
    expect(canvas.print(4,4)).to eq(
      "------\n"+
      "|    |\n"+
      "|    |\n"+
      "|    |\n"+
      "|    |\n"+            
      "------")
  end


end
