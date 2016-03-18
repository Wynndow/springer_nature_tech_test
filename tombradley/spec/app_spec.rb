require 'app'

describe Draw do
  subject(:draw) { described_class.new }

  describe '#execute_command' do
    it 'draws a canvas of the correct dimensions' do
      input = draw.execute_command('C 4 2')
      expect(input).to eq(%q(------
|    |
|    |
------
))
    end

    it 'draws a different canvas correctly' do
      input = draw.execute_command('C 1 1')
      expect(input).to eq("---\n" + "| |\n" + "---\n")
    end
  end
end
