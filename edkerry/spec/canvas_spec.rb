describe Canvas do

  let(:canvas) {described_class.new(4,3)}

  describe'#defaults' do
    it'should initialize with an array of dimension size' do
      expect(canvas.dimension).to eq(Matrix[[nil,nil,nil],[nil,nil,nil],[nil,nil,nil],[nil,nil,nil]])
    end
  end

  describe '#toScreen' do
    it'should print a canvas to specified size' do
      expect(canvas.toScreen).to eq(
      '-----' + "\n" +
      '|   |' + "\n" +
      '|   |' + "\n" +
      '|   |' + "\n" +
      '|   |' + "\n" +
      '-----')
    end
  end
end
