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

  it "raises an error when given an incorrect command" do
    commander = Commander.new
    expect(commander.execute("X 2 3")).to eq("Invalid command")
  end

  it "Raises and error when not given the correct params for a correct command" do
    commander = Commander.new
    expect(commander.execute("C y y")).to eq("Invalid command")
  end

end