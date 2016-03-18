require 'drawing'

describe Drawing do
  subject(:drawing){ described_class.new }
  blank_canvas2x3 = [
    [' ', ' '],
    [' ', ' '],
    [' ', ' ']
]

  it{ is_expected.to respond_to(:canvas).with(2).arguments }


  describe '#canvas' do
    w = 2
    h = 3
    it 'can create a canvas' do
      expect(drawing.canvas(w, h)).to eq blank_canvas2x3
    end
  end

end

