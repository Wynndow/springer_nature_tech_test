describe CreateCanvasCommand do

  let(:command) {described_class.new(10,15)}

  it 'should pass a command to the canvas class' do
    expect(Canvas).to receive(:new).with(10,15)
    command.execute
  end

end
