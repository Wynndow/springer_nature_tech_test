describe('Command', function() {
  var Command = require('../js/command.js');
  var command = new Command();

  describe('new canvas', function() {
    xit('should identify a new canvas command on a small 3x3 canvas', function() {
      // based on user input 'C 20 4'
      expect(command.newCanvas(3,3)).toEqual(
					     '-----\n' +
			    		     '|   |\n' +
			    		     '|   |\n' +
			    		     '|   |\n' +
					     '-----\n')
    })

    xit('should identify a new canvas command and return a 20x4 canvas', function() {
      expect(command.newCanvas(20,4)).toEqual(
					      '----------------------\n' +
					      '|                    |\n' +
					      '|                    |\n' +
					      '|                    |\n' +
					      '|                    |\n' +
					      '----------------------\n')
    })
  })

  describe('parseInput', function() {
    it('should call a new canvas when issued with a command to do so', function() {
      spyOn(command, 'newCanvas');
      command.parseInput('C 20 4');
      expect(command.newCanvas).toHaveBeenCalledWith(20, 4);
    })
  })
})
