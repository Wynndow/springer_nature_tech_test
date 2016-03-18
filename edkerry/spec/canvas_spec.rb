require 'canvas'

describe Canvas do

  let(:canvas) {described_class.new(4,4)}

  describe '#toScreen' do
    it'should print a canvas to specified size' do
      expect(canvas.toScreen).to eq('------' + "\n" + '|    |' + "\n" + '|    |' + "\n"  + '|    |' + "\n" + '|    |' + "\n" + '------')
    end
  end
end
