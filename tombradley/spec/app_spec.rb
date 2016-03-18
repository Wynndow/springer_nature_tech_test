require 'app'

describe Canvas do
  subject(:canvas) { described_class.new }

  describe '#execute_command' do
    it 'draws a canvas of the correct dimensions' do
      canvas.reset(4, 2)
      expect(canvas.render).to eq(%q(------
|    |
|    |
------
))
    end

    it 'draws a different canvas correctly' do
      canvas.reset(1, 1)
      expect(canvas.render).to eq("---\n" + "| |\n" + "---\n")
    end
  end
end


xdescribe LineCommand do
  describe '#draw_line' do
    it 'draws a horizontal line of the correct dimensions' do
      command = LineCommand.new(1, 2, 6, 2)

      canvas = Canvas.new
      canvas.reset(20, 4)

      command.execute_command(canvas)
      expect(canvas.render()).to eq(%q(----------------------
  |                    |
  |xxxxxx              |
  |                    |
  |                    |
  ----------------------
  ))
    end
  end
end
