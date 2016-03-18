describe Input do

  describe'#initialization' do
    it'should print to the screen' do
      expect{Input.new}.to output('Enter Command').to_stdout
    end
  end

end
