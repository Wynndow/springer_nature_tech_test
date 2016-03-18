require 'command'

describe Command do

subject(:command) { described_class.new }

  it 'understands the new canvas command' do
    expect(command.userinput("C 2 3")).to eq(
    "----\n"+
    "|  |\n"+
    "|  |\n"+
    "|  |\n"+
    "----\n"
    )
  end

  it 'draws a horizonal line on the current canvas' do
    command.userinput("C 2 3")

    expect(command.userinput("L 1 1")).to eq(
    "-------\n"+
    "|     |\n"+
    "| x   |\n"+
    "|     |\n"+
    "|     |\n"+
    "-------\n"
    )
  end

end
