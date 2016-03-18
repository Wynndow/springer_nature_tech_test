describe('Command', function() {
  var Command = require('../js/command.js');
  var Canvas = require('../js/canvas.js');
  var command;

  beforeEach(function() {
    command = new Command(Canvas);
  })
  describe('on initialization', function() {
    it('should be initialized with a canvas class generator', function() {
      expect(command.canvasGenerator).toBeDefined();
    })
  })
  describe('parseInput', function() {
    it('should call a new canvas when issued with a command to do so', function() {
      spyOn(command, 'newCanvas');
      command.parseInput('C 20 4');
      expect(command.newCanvas).toHaveBeenCalledWith(20, 4);
    })
    it('should draw a line when issued with a command to do so', function() {
      spyOn(command, 'line');
      command.parseInput('L 1 2 6 2');
      expect(command.line).toHaveBeenCalledWith(1,2,6,2);
    })
  })
})
