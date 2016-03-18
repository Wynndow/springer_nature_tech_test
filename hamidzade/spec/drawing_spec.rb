require 'drawing'

describe Drawing do
  subject(:drawing){ described_class.new }

  it{ is_expected.to respond_to(:canvas).with(2).arguments }

  describe '#canvas' do
    w = 2
    h = 3
    it 'can create a canvas' do
      expect(drawing.canvas(w, h)).to eq [[' ', ' '],[' ', ' '],[' ', ' ']]
    end
  end

end