require 'canvas.rb'

describe Canvas do
  


  it "prints a canvas of 2 by 2" do
    canvas = Canvas.new(2,2)
    expect(canvas.print).to eq(
      "----\n"+
      "|  |\n"+
      "|  |\n"+
      "----")
  end

  it "prints a canvas of 4 by 4" do
    canvas = Canvas.new(4,4)
    expect(canvas.print).to eq(
      "------\n"+
      "|    |\n"+
      "|    |\n"+
      "|    |\n"+
      "|    |\n"+            
      "------")
  end


end
