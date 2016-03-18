describe('canvas', function() {
  var Canvas = require('../js/canvas.js');
  
  describe('on initialization', function() {
    it('should know it\'s dimensions', function() {
      var canvas = new Canvas(20, 4);
      expect(canvas.height).toEqual(4);
      expect(canvas.width).toEqual(20);
    })
  })

  describe('generateCanvas', function() {
    it('should generate a blank canvas', function() {
      var canvas = new Canvas(5,5);
      canvas.generateCanvas();
      expect(canvas.content[1][1]).toEqual(' ');
    })
  })
})
