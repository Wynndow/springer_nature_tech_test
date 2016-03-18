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

  describe('drawPoint', function() {
    it('should be able to draw a point', function() {
      var canvas = new Canvas(5,5);
      canvas.generateCanvas();
      canvas.drawPoint(2,3);
      expect(canvas.content[3][2]).toEqual('x');
    })
    it('shouldnt be able to draw a point outside of the canvas', function() {
      var canvas = new Canvas(5,5);
      canvas.generateCanvas();
      expect(function(){canvas.drawPoint(15,100)}).toThrow('Canvas is 5x5; Unable to draw point x:15 y:100 outside of canvas');
    })
  })

  describe('drawLine', function() {
    it('should be able to draw a horizontal line between two points', function() {
      var canvas = new Canvas(5,5);
      canvas.generateCanvas();
      canvas.drawLine(0,0,4,0);
      expect(canvas.content[0][0]).toEqual('x');
      expect(canvas.content[0][1]).toEqual('x');
      expect(canvas.content[0][2]).toEqual('x');
      expect(canvas.content[0][3]).toEqual('x');
      expect(canvas.content[1].indexOf('x')).toEqual(-1);
    })
    it('should be able to draw a vertical line between two points', function() {
      var canvas = new Canvas(5,5);
      canvas.generateCanvas();
      canvas.drawLine(0,0,0,2);
      expect(canvas.content[0][0]).toEqual('x');
      expect(canvas.content[1][0]).toEqual('x');
      expect(canvas.content[2][0]).toEqual('x');
      expect(canvas.content[3][0]).toEqual(' ');
    })
  })
})
