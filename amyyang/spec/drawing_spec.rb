require 'drawing'

describe Drawing do

  it 'takes a command and creates a canvas' do
    expect(subject.command("C 2 3")).to eq(
    "----\n" +
    "|  |\n" +
    "|  |\n" +
    "|  |\n" +
    "----\n")
  end

  it "takes a command and creates a different size canvas" do
    expect(subject.command("C 1 2")).to eq(
    "---\n" +
    "| |\n" +
    "| |\n" +
    "---\n")
  end

  it "parses the C command" do
    expect(subject.parse("C 2 3")).to eq(["C","2","3"])
  end

end
