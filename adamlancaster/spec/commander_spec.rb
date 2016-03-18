require 'commander.rb'

describe Commander do

  it "take user's input and calls canvas" do
    commander = Commander.new
    expect(commander.execute("C 2 2")).to eq(
      "----\n"+
      "|  |\n"+
      "|  |\n"+
      "----")
  end

  it "take user's input and calls canvas" do
    commander = Commander.new
    expect(commander.execute("C 2 3")).to eq(
      "----\n"+
      "|  |\n"+
      "|  |\n"+
      "|  |\n"+
      "----")
  end

end