require 'command'

describe CommandExecutor do
  let(:canvas) { double :canvas, new: canvas_object  }
  let(:canvas_object) { ( "------------\n" +
                          "|          |\n" +
                          "|          |\n" +
                          "|          |\n" +
                          "|          |\n" +
                          "------------\n"
                          )}
  subject(:command_executor) { described_class.new(canvas) }

  describe '#execute' do
      it 'can take valid create command and print result' do
          expect{ command_executor.execute("C 10 4") }.to output(
          "------------\n" +
          "|          |\n" +
          "|          |\n" +
          "|          |\n" +
          "|          |\n" +
          "------------\n"
          ).to_stdout
      end
  end
end
