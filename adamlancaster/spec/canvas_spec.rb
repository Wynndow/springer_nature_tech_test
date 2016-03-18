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

  describe("printing lines") do
 
    it "Prints a straight line given the start and end point" do
      canvas = Canvas.new(2,2)
      expect(canvas.print_line(0, 0, 0, 1)).to eq(
        "----\n"+
        "|xx|\n"+
        "|  |\n"+
        "----")
    end

    it "Prints a straight line given the start and end point" do
      canvas = Canvas.new(2,2)
      expect(canvas.print_line(1, 0, 1, 1)).to eq(
        "----\n"+
        "|  |\n"+
        "|xx|\n"+
        "----")
    end
  
  end

end
