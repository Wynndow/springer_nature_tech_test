describe Input do

  let(:input) {described_class.new}

  describe'#initialization' do
    it'should print to the screen' do
      expect{Input.new}.to output('Enter Command').to_stdout
    end
  end

  describe'#userCommand' do
    before do
      $stdin = StringIO.new("C 20 4\n")
    end
    after do
      $stdin = STDIN
    end
    it'should pass string into array' do
      expect(input.userCommand).to eq(['C', 20, 4])
    end
  end

  describe'#commandParser' do
    it'should parse userCommand into a command' do
      expect(input.commandParser(['C', 20, 4])).to be_a(CreateCanvasCommand)
    end
  end

end
