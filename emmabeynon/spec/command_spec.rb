require 'command'

describe CommandExecutor do
  let(:canvas) { double :canvas, new:  }
  subject(:command_executor) { described_class.new(canvas) }

  describe '#execute' do
      it 'can take valid create command and print result' do
          expect(command_executor.execute("C 10 4")).to eq(
          "------------\n" +
          "|          |\n" +
          "|          |\n" +
          "|          |\n" +
          "|          |\n" +
          "------------\n"
          )
      end
  end
end
